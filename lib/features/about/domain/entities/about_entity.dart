import 'package:equatable/equatable.dart' show Equatable;

final class AppVersionEntity extends Equatable {
  const AppVersionEntity({
    required this.versionName,
    required this.versionCode,
  });

  final String versionName;

  final String versionCode;

  @override
  List<Object?> get props => [
        versionName,
        versionCode,
      ];
}
