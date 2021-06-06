typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class CustomJsonDecoder {
  CustomJsonDecoder(this.fromJson);

  final Map<Type, JsonFactory<dynamic>> fromJson;

  dynamic decode<T>(dynamic entity) {
    try {
      if (entity is Iterable) {
        return _decodeList<T>(entity);
      }
      if (entity is T) {
        return entity;
      }
      if (entity is Map<String, dynamic>) {
        return _decodeMap<T>(entity);
      }
      return entity;
    } catch (ex) {
      rethrow;
    }
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = fromJson[T];
    if (jsonFactory != null) {
      return jsonFactory(values);
    }
    return throw Exception('Could not find factory for type $T.');
  }

  List<T> _decodeList<T>(Iterable<dynamic> values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}
