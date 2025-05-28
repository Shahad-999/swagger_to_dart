/// Dog
/// {
///     "properties": {
///         "name": {
///             "type": "string",
///             "description": "The animal's name",
///             "title": "Name"
///         },
///         "type": {
///             "type": "string",
///             "const": "dog",
///             "default": "dog",
///             "title": "Type"
///         },
///         "bark_loudness": {
///             "type": "integer",
///             "description": "How loud the dog barks (0-10)",
///             "title": "Bark Loudness"
///         }
///     },
///     "type": "object",
///     "required": [
///         "name",
///         "bark_loudness"
///     ],
///     "title": "Dog"
/// }
library;

import 'exports.dart';
part 'dog.freezed.dart';
part 'dog.g.dart'; // Dog

@freezed
abstract class Dog with _$Dog {
  const Dog._();

  @jsonSerializable
  const factory Dog({
    /// name
    @JsonKey(name: Dog.nameKey) required String name,

    /// type
    @Default('dog') @JsonKey(name: Dog.typeKey) String type,

    /// barkLoudness
    @JsonKey(name: Dog.barkLoudnessKey) required int barkLoudness,
  }) = _Dog;

  factory Dog.fromJson(Map<String, dynamic> json) => _$DogFromJson(json);

  static const String nameKey = r'name';

  static const String typeKey = r'type';

  static const String barkLoudnessKey = r'bark_loudness';
}
