import 'package:freezed_annotation/freezed_annotation.dart' show JsonConverter;

final class NullableDurationConverter
    implements JsonConverter<Duration?, double?> {
  const NullableDurationConverter();

  @override
  Duration? fromJson(double? json) {
    if (json == null) return null;

    return Duration(
      milliseconds: json.toInt(),
    );
  }

  @override
  double? toJson(Duration? object) {
    if (object == null) return null;

    return object.inMilliseconds.toDouble();
  }
}
