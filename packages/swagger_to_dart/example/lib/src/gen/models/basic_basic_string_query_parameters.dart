/// BasicBasicStringQueryParameters
/// {
///     "properties": {
///         "text": {
///             "type": "string",
///             "maxLength": 50,
///             "minLength": 3,
///             "title": "Text"
///         }
///     },
///     "type": "object"
/// }
library;

import 'exports.dart';
part 'basic_basic_string_query_parameters.freezed.dart';
part 'basic_basic_string_query_parameters.g.dart'; // BasicBasicStringQueryParameters

@freezed
abstract class BasicBasicStringQueryParameters
    with _$BasicBasicStringQueryParameters {
  const BasicBasicStringQueryParameters._();

  @jsonSerializable
  const factory BasicBasicStringQueryParameters({
    /// text
    @JsonKey(name: BasicBasicStringQueryParameters.textKey)
    required String text,
  }) = _BasicBasicStringQueryParameters;

  factory BasicBasicStringQueryParameters.fromJson(Map<String, dynamic> json) =>
      _$BasicBasicStringQueryParametersFromJson(json);

  static const String textKey = r'text';
}
