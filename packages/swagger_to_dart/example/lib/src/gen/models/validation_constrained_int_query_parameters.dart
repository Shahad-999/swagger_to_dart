/// ValidationConstrainedIntQueryParameters
/// {
///     "properties": {
///         "value": {
///             "type": "integer",
///             "description": "Integer between 0 and 99",
///             "title": "Value"
///         }
///     },
///     "type": "object"
/// }
library;

import 'exports.dart';
part 'validation_constrained_int_query_parameters.freezed.dart';
part 'validation_constrained_int_query_parameters.g.dart'; // ValidationConstrainedIntQueryParameters

@freezed
abstract class ValidationConstrainedIntQueryParameters
    with _$ValidationConstrainedIntQueryParameters {
  const ValidationConstrainedIntQueryParameters._();

  @jsonSerializable
  const factory ValidationConstrainedIntQueryParameters({
    /// value
    @JsonKey(name: ValidationConstrainedIntQueryParameters.valueKey)
    required int value,
  }) = _ValidationConstrainedIntQueryParameters;

  factory ValidationConstrainedIntQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$ValidationConstrainedIntQueryParametersFromJson(json);

  static const String valueKey = "value";
}
