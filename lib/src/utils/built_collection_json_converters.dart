import 'package:built_collection/built_collection.dart';
import 'package:json_annotation/json_annotation.dart';

// Taking reference from https://github.com/google/built_collection.dart/issues/260.
class BuiltListJsonConverter<T>
    extends JsonConverter<BuiltList<T>, List<dynamic>> {
  const BuiltListJsonConverter();

  @override
  BuiltList<T> fromJson(List<dynamic> json) =>
      BuiltList<T>(json.map((e) => e as T));

  @override
  List<dynamic> toJson(BuiltList<T> object) => object.asList();
}

class StringBuiltListJsonConverter extends BuiltListJsonConverter<String> {
  const StringBuiltListJsonConverter();
}