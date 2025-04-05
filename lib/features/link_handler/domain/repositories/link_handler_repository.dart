import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/link_handler_failure.dart';
import 'package:sky_trade/features/link_handler/domain/entities/link_entity.dart';

abstract interface class LinkHandlerRepository {
  Stream<Uri> get linkStream;

  Future<Either<CheckLinkFailure, LinkEntity>> checkLink({
    required String link,
  });

  Future<Either<HandleLinkFailure, LinkEntity>> handleLink({
    required String link,
  });
}
