/// CategoryResponse
/// {
///     "properties": {
///         "id": {
///             "type": "integer",
///             "title": "Id"
///         },
///         "name": {
///             "type": "string",
///             "title": "Name"
///         }
///     },
///     "type": "object",
///     "required": [
///         "id",
///         "name"
///     ],
///     "title": "CategoryResponse"
/// }
library;

import 'exports.dart';
part 'category_response.freezed.dart';
part 'category_response.g.dart'; // CategoryResponse

@freezed
abstract class CategoryResponse with _$CategoryResponse {
  const CategoryResponse._();

  @jsonSerializable
  const factory CategoryResponse({
    /// id
    @JsonKey(name: CategoryResponse.idKey) required int id,

    /// name
    @JsonKey(name: CategoryResponse.nameKey) required String name,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);

  static const String idKey = r'id';

  static const String nameKey = r'name';
}
