import 'package:dartz/dartz.dart' show Either;
import 'package:sky_ways/core/errors/failures/link_handler_failure.dart';
import 'package:sky_ways/features/link_handler/domain/entities/link_entity.dart';

abstract interface class LinkHandlerRepository {
  Future<Either<CheckLinkFailure, LinkEntity>> checkLink({
    required String link,
  });

  Future<Either<HandleLinkFailure, LinkEntity>> handleLink({
    required String link,
  });
}
