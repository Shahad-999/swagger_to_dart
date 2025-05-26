/// AdvancedCollectionVariableTupleQueryParameters
/// {
///     "properties": {
///         "items": {
///             "type": "array",
///             "items": {
///                 "type": "string"
///             },
///             "title": "Items"
///         }
///     },
///     "type": "object"
/// }
library;

import 'exports.dart';
part 'advanced_collection_variable_tuple_query_parameters.freezed.dart';
part 'advanced_collection_variable_tuple_query_parameters.g.dart'; // AdvancedCollectionVariableTupleQueryParameters

@freezed
abstract class AdvancedCollectionVariableTupleQueryParameters
    with _$AdvancedCollectionVariableTupleQueryParameters {
  const AdvancedCollectionVariableTupleQueryParameters._();

  @jsonSerializable
  const factory AdvancedCollectionVariableTupleQueryParameters({
    /// items
    @JsonKey(name: AdvancedCollectionVariableTupleQueryParameters.itemsKey)
    required List<String> items,
  }) = _AdvancedCollectionVariableTupleQueryParameters;

  factory AdvancedCollectionVariableTupleQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedCollectionVariableTupleQueryParametersFromJson(json);

  static const String itemsKey = "items";
}
