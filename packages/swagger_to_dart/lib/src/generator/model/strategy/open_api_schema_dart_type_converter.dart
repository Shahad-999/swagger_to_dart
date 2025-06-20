import 'package:collection/collection.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class OpenApiSchemaDartTypeConverter extends GeneratorStrategy {
  const OpenApiSchemaDartTypeConverter(super.context);

  String get(
    OpenApiSchema schema, {
    required String className,
    OpenApiSchema? parent,
    Map<String, String> overrideTypes = const {},
  }) {
    final dartType = switch (schema) {
      OpenApiSchemaType schema => getType(
          schema,
          parent: parent,
          className: className,
          overrideTypes: overrideTypes,
        ),
      OpenApiSchemaRef schema => getRef(schema),
      OpenApiSchemaAnyOf schema => getAnyOf(schema, className: className),
      OpenApiSchemaOneOf schema => getOneOf(schema, className: className)
    };

    final override = overrideTypes.entries.firstWhereOrNull(
      (entry) => entry.value == dartType,
    );

    return override?.key ?? dartType;
  }

  String getRef(OpenApiSchemaRef schema) {
    final schemas = context.openApi.getOpenApiSchemasByRef(schema.ref!);
    final title = schemas?.title ?? schema.name;

    return _processGenericTitle(title);
  }

  String _processGenericTitle(String title) {
    final genericStart = title.indexOf('[');
    final genericEnd = title.lastIndexOf(']');

    if (genericStart == -1 || genericEnd == -1 || genericEnd <= genericStart) {
      return Renaming.instance.renameClass(title);
    }

    final base = title.substring(0, genericStart);
    final genericsContent = title.substring(genericStart + 1, genericEnd);
    final genericTypes = _splitGenerics(genericsContent);

    final processedGenerics = genericTypes
        .map((type) => _processGenericTitle(type.trim()))
        .join(', ');

    return '${Renaming.instance.renameClass(base)}<$processedGenerics>';
  }

// Handles nested generics splitting: Pagination[Source[Item], Meta] => [Source[Item], Meta]
  List<String> _splitGenerics(String input) {
    final parts = <String>[];
    final buffer = StringBuffer();
    int depth = 0;

    for (var char in input.split('')) {
      if (char == ',' && depth == 0) {
        parts.add(buffer.toString());
        buffer.clear();
      } else {
        if (char == '[') depth++;
        if (char == ']') depth--;
        buffer.write(char);
      }
    }

    if (buffer.isNotEmpty) {
      parts.add(buffer.toString());
    }

    return parts;
  }

  String getAnyOf(
    OpenApiSchemaAnyOf schema, {
    required String className,
  }) {
    final anyOf = schema.anyOf;
    final schemas = anyOf.where((e) {
      return !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_);
    }).toList();
    final isNullable = schemas.length != anyOf.length;

    if (schemas.length == 1) {
      final dartType = get(
        schemas.first,
        parent: schema,
        className: className,
      );
      return dartType + (isNullable ? '?' : '');
    }

    if (schemas.every((e) => e is OpenApiSchemaRef)) {
      final strategy = UnionModelStrategy(context);

      final (model, className) = strategy.buildAnyOf(schema);
      context.addModel(model);

      return className;
    }

    return 'dynamic';
  }

  String getOneOf(
    OpenApiSchemaOneOf schema, {
    required String className,
  }) {
    final oneOf = schema.oneOf;
    final schemas = oneOf.where((e) {
      return !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_);
    }).toList();

    if (schemas.length == 1) {
      return get(schemas.first, className: className);
    }

    if (schemas.every((e) => e is OpenApiSchemaRef)) {
      final strategy = UnionModelStrategy(context);

      final (model, className) = strategy.buildOneOf(schema);
      context.addModel(model);

      return className;
    }

    return 'dynamic';
  }

  String getType(
    OpenApiSchemaType schema, {
    required String className,
    OpenApiSchema? parent,
    Map<String, String> overrideTypes = const {},
  }) {
    if (schema.enum_ != null) {
      final strategy = EnumModelGeneratorStrategy(context);

      final name = schema.title ?? parent?.title;

      final className = Renaming.instance.renameEnum(name!);
      final model = strategy.build(
        MapEntry(
          className,
          OpenApiSchemas(
            type: 'object',
            properties: {},
            enum_: schema.enum_,
          ),
        ),
      );
      context.addModel(model);

      return className;
    }

    switch (schema.type) {
      case OpenApiSchemaVarType.string:
        switch (schema.format) {
          case 'date-time':
            return 'DateTime';
          case 'date':
            return 'DateTime';
          case 'color-hex':
            return 'Color';
          case 'binary':
            return 'MultipartFile';
          case 'uuid':
            return 'String';
          case 'time' || 'duration':
            return context.isFlutterProject ? 'TimeOfDay' : 'String';
          case 'uri':
            return 'Uri';
          default:
            return 'String';
        }
      case OpenApiSchemaVarType.number:
        return 'double';
      case OpenApiSchemaVarType.integer:
        return 'int';
      case OpenApiSchemaVarType.boolean:
        return 'bool';
      case OpenApiSchemaVarType.array:
        final items = schema.items;
        final dartType = items == null
            ? 'dynamic'
            : get(items, className: className, overrideTypes: overrideTypes);

        return 'List<$dartType>';
      case OpenApiSchemaVarType.object:
        final items = schema.items;
        final dartType = items == null
            ? 'dynamic'
            : get(items, className: className, overrideTypes: overrideTypes);

        return 'Map<String, $dartType>';
      case OpenApiSchemaVarType.null_ || OpenApiSchemaVarType.$unknown || null:
        return 'dynamic';
    }
  }

  String? getDefaultValue(
    OpenApiSchema schema, {
    OpenApiSchema? parent,
  }) {
    final default_ = schema.default_;

    switch (schema) {
      case OpenApiSchemaType schema:
        if (schema.enum_ != null) {
          // TODO(masreplay): fix enum name
          final name = schema.title ?? parent?.title ?? 'TemporaryEnum';
          final className = Renaming.instance.renameEnum(name);

          if (schema.default_ == null) return null;
          final defaultValue = Renaming.instance.renameEnumValue(
            schema.default_.toString(),
          );

          return '$className.$defaultValue';
        }

        return _dartLiteral(default_);
      case OpenApiSchemaRef schema:
        final dartType = getRef(schema);
        final refSchema = context.openApi.getOpenApiSchemasByRef(schema.ref!)!;

        if (refSchema.enum_ != null && default_ != null) {
          if (schema.default_ == null) return null;
          final defaultValue = Renaming.instance.renameEnumValue(
            schema.default_.toString(),
          );

          return '$dartType.$defaultValue';
        }

        return default_?.toString();
      case OpenApiSchemaAnyOf schema:
        final default_ = schema.default_;
        return default_?.toString();
      case OpenApiSchemaOneOf schema:
        final default_ = schema.default_;
        return default_?.toString();
    }
  }

  String? _dartLiteral(Object? value) {
    if (value == null) return null;
    if (value is String) {
      return "'${value.replaceAll("'", "\\'")}'";
    }
    if (value is num || value is bool) {
      return value.toString();
    }
    if (value is List) {
      final items = value.map(_dartLiteral).join(', ');
      return 'const [$items]';
    }
    if (value is Map) {
      final entries = value.entries
          .map((e) => '${_dartLiteral(e.key)}: ${_dartLiteral(e.value)}')
          .join(', ');
      return 'const {$entries}';
    }
    return value.toString();
  }
}
