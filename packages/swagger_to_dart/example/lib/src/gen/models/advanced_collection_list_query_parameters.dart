/// AdvancedCollectionListQueryParameters
/// {
///     "properties": {
///         "items": {
///             "type": "array",
///             "items": {
///                 "type": "string"
///             },
///             "default": [
///                 "default"
///             ],
///             "title": "Items"
///         }
///     },
///     "type": "object"
/// }
library;

import 'exports.dart';
part 'advanced_collection_list_query_parameters.freezed.dart';
part 'advanced_collection_list_query_parameters.g.dart'; // AdvancedCollectionListQueryParameters

@freezed
abstract class AdvancedCollectionListQueryParameters
    with _$AdvancedCollectionListQueryParameters {
  const AdvancedCollectionListQueryParameters._();

  @jsonSerializable
  const factory AdvancedCollectionListQueryParameters({
    /// items
    @Default(['default'])
    @JsonKey(name: AdvancedCollectionListQueryParameters.itemsKey)
    List<String> items,
  }) = _AdvancedCollectionListQueryParameters;

  factory AdvancedCollectionListQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AdvancedCollectionListQueryParametersFromJson(json);

  static const String itemsKey = r'items';
}
