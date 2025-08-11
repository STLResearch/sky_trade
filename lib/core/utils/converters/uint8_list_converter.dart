// SPDX-License-Identifier: UNLICENSED
                            
import 'dart:typed_data' show Uint8List;

import 'package:freezed_annotation/freezed_annotation.dart' show JsonConverter;

final class Uint8ListConverter
    implements JsonConverter<Uint8List, List<dynamic>> {
  const Uint8ListConverter();

  @override
  Uint8List fromJson(List<dynamic> json) => Uint8List.fromList(
        json.cast<int>(),
      );

  @override
  List<int> toJson(Uint8List object) => object.toList();
}

final class NullableUint8ListConverter
    implements JsonConverter<Uint8List?, List<dynamic>?> {
  const NullableUint8ListConverter();

  @override
  Uint8List? fromJson(List<dynamic>? json) {
    if (json == null) return null;

    return Uint8List.fromList(
      json.cast<int>(),
    );
  }

  @override
  List<int>? toJson(Uint8List? object) {
    if (object == null) return null;

    return object.toList();
  }
}
