/// AdvancedSpecialUuidQueryParameters
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid",
///             "title": "Id"
///         }
///     },
///     "type": "object"
/// }
library;

import 'exports.dart';
part 'advanced_special_uuid_query_parameters.freezed.dart';
part 'advanced_special_uuid_query_parameters.g.dart'; // AdvancedSpecialUuidQueryParameters

@freezed
abstract class AdvancedSpecialUuidQueryParameters
    with _$AdvancedSpecialUuidQueryParameters {
  const AdvancedSpecialUuidQueryParameters._();

  @jsonSerializable
  const factory AdvancedSpecialUuidQueryParameters({
    /// id
    @JsonKey(name: AdvancedSpecialUuidQueryParameters.idKey) required String id,
  }) = _AdvancedSpecialUuidQueryParameters;

  factory AdvancedSpecialUuidQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedSpecialUuidQueryParametersFromJson(json);

  static const String idKey = r'id';
}
