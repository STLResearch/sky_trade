import 'package:bloc_test/bloc_test.dart' show blocTest;
import 'package:dartz/dartz.dart' show Left, Right;
import 'package:flutter_test/flutter_test.dart' show setUp, tearDown;
import 'package:mockito/annotations.dart' show GenerateNiceMocks, MockSpec;
import 'package:mockito/mockito.dart'
    show verifyInOrder, verifyNoMoreInteractions, when;
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show UserNotFoundFailure;
import 'package:sky_trade/features/auth/domain/entities/auth_entity.dart';
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    show AuthBloc, AuthEvent, AuthState;

import 'auth_bloc_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AuthRepository>(),
])
void main() {
  late MockAuthRepository mockAuthRepository;
  late AuthBloc authBloc;

  late String testEmail;
  late String testIdToken;
  late Auth0UserEntity testAuth0UserEntity;
  late SFAUserEntity testSFAUserEntity;
  late OwnedReferralCodeEntity testOwnedReferralCodeEntity;
  late SkyTradeUserEntity testSkyTradeUserEntity;

  setUp(
    () {
      mockAuthRepository = MockAuthRepository();
      authBloc = AuthBloc(
        mockAuthRepository,
      );

      testIdToken = 'testIdToken';
      testEmail = 'testEmail';
      testAuth0UserEntity = Auth0UserEntity(
        idToken: testIdToken,
        refreshToken: 'testRefreshToken',
        email: testEmail,
        emailVerified: true,
      );
      testSFAUserEntity = const SFAUserEntity(
        privateKey: 'testPrivateKey',
        publicAddress: 'testPublicAddress',
      );
      testOwnedReferralCodeEntity = const OwnedReferralCodeEntity(
        id: 'testId',
        code: 'testCode',
        codeChanged: true,
        usedByBonusEarned: true,
        ownedByBonusEarned: true,
      );
      testSkyTradeUserEntity = SkyTradeUserEntity(
        id: 'testId',
        createdAt: DateTime.now(),
        updateAt: DateTime.now(),
        username: 'testUsername',
        password: 'testPassword',
        name: 'testName',
        email: testEmail,
        blockchainAddress: 'testBlockchainAddress',
        isAdmin: false,
        newsletter: true,
        categoryId: 1,
        phoneNumber: 'testPhoneNumber',
        kYCStatusId: 1,
        isActive: true,
        usedReferralCodeId: 'testUsedReferralCodeId',
        ownedReferralCodeId: 'testOwnedReferralCodeId',
        isUserRewardClaimed: false,
        ownedReferralCode: testOwnedReferralCodeEntity,
      );
    },
  );

  blocTest<AuthBloc, AuthState>(
    '''
      Should emit [AuthState.authenticating] first then
      [AuthState.authenticated] when [AuthEvent.authenticate] is called
      and there was no Auth0 session, no SFA session but a SkyTrade user
    ''',
    build: () => authBloc,
    setUp: () {
      when(
        mockAuthRepository.checkAuth0UserSessionExists(),
      ).thenAnswer(
        (_) async => false,
      );

      when(
        mockAuthRepository.authenticateUserWithAuth0(),
      ).thenAnswer(
        (_) async => Right(
          testAuth0UserEntity,
        ),
      );

      when(
        mockAuthRepository.checkSFAUserSessionExists(),
      ).thenAnswer(
        (_) async => false,
      );

      when(
        mockAuthRepository.authenticateAuth0UserWithSFAUsing(
          email: testEmail,
          idToken: testIdToken,
        ),
      ).thenAnswer(
        (_) async => Right(
          testSFAUserEntity,
        ),
      );

      when(
        mockAuthRepository.checkSkyTradeUserExists(),
      ).thenAnswer(
        (_) async => Right(
          testSkyTradeUserEntity,
        ),
      );
    },
    act: (bloc) => bloc.add(
      const AuthEvent.authenticate(),
    ),
    expect: () => <AuthState>[
      const AuthState.authenticating(),
      const AuthState.authenticated(),
    ],
    verify: (_) {
      verifyInOrder(
        [
          mockAuthRepository.checkAuth0UserSessionExists(),
          mockAuthRepository.authenticateUserWithAuth0(),
          mockAuthRepository.checkSFAUserSessionExists(),
          mockAuthRepository.authenticateAuth0UserWithSFAUsing(
            email: testEmail,
            idToken: testIdToken,
          ),
          mockAuthRepository.checkSkyTradeUserExists(),
        ],
      )
        ..[0].called(1)
        ..[1].called(1)
        ..[2].called(1)
        ..[3].called(1)
        ..[4].called(1);

      verifyNoMoreInteractions(
        mockAuthRepository,
      );
    },
  );

  tearDown(
    () {
      authBloc.close();
    },
  );
}
