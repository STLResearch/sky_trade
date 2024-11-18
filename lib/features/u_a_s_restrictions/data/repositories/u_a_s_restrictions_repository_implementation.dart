import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/u_a_s_restrictions_failure.dart'
    show UASRestrictionsFailure;
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/core/utils/clients/signature_handler.dart';
import 'package:sky_trade/features/u_a_s_restrictions/data/data_sources/u_a_s_restrictions_remote_data_source.dart'
    show UASRestrictionsRemoteDataSource;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;
import 'package:sky_trade/features/u_a_s_restrictions/domain/repositories/u_a_s_restrictions_repository.dart';

final class UASRestrictionsRepositoryImplementation
    with DataHandler, SignatureHandler
    implements UASRestrictionsRepository {
  const UASRestrictionsRepositoryImplementation(
    UASRestrictionsRemoteDataSource uASRestrictionsRemoteDataSource,
  ) : _uASRestrictionsRemoteDataSource = uASRestrictionsRemoteDataSource;

  final UASRestrictionsRemoteDataSource _uASRestrictionsRemoteDataSource;

  @override
  Future<Either<UASRestrictionsFailure, List<RestrictionEntity>>>
      getRestrictionsUsing({
    required String geoHash,
  }) async {
    final issuedAt = computeIssuedAt();
    final nonce = computeNonce();
    final userAddress = await computeUserAddress();
    final message = computeMessageToSignUsing(
      issuedAt: issuedAt,
      nonce: nonce,
      userAddress: userAddress,
    );
    final email = await computeUserEmail();
    final sign = await signMessage(
      message,
    );

    return handleData<UASRestrictionsFailure, List<RestrictionEntity>>(
      dataSourceOperation: () =>
          _uASRestrictionsRemoteDataSource.getRestrictionsUsing(
        geoHash: geoHash,
        signature: (
          sign: sign,
          issuedAt: issuedAt,
          nonce: nonce,
          address: userAddress,
          email: email,
        ),
      ),
      onSuccess: (restrictionEntities) => restrictionEntities,
      onFailure: (_) => UASRestrictionsFailure(),
    );
  }
}
