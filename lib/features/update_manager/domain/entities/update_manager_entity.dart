// SPDX-License-Identifier: UNLICENSED
                            
import 'package:equatable/equatable.dart' show Equatable;

base class VersionEntity extends Equatable {
  const VersionEntity({
    required this.currentApiVersion,
  });

  final String currentApiVersion;

  @override
  List<Object?> get props => [
        currentApiVersion,
      ];
}
