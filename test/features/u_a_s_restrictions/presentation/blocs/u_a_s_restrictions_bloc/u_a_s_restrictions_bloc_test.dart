import 'package:bloc_test/bloc_test.dart' show blocTest;
import 'package:dartz/dartz.dart' show Left, Right;
import 'package:flutter_test/flutter_test.dart' show setUp, tearDown;
import 'package:mockito/annotations.dart' show GenerateNiceMocks, MockSpec;
import 'package:mockito/mockito.dart'
    show anyNamed, verify, verifyNoMoreInteractions, when;
import 'package:sky_trade/core/errors/failures/u_a_s_restrictions_failure.dart'
    show UASRestrictionsFailure;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show GeometryType, RestrictionType;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart';
import 'package:sky_trade/features/u_a_s_restrictions/domain/repositories/u_a_s_restrictions_repository.dart';
import 'package:sky_trade/features/u_a_s_restrictions/presentation/blocs/u_a_s_restrictions_bloc/u_a_s_restrictions_bloc.dart'
    show UASRestrictionsBloc, UASRestrictionsEvent, UASRestrictionsState;

import 'u_a_s_restrictions_bloc_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<UASRestrictionsRepository>(),
])
void main() {
  late MockUASRestrictionsRepository mockUASRestrictionsRepository;
  late UASRestrictionsBloc uASRestrictionsBloc;

  late String testGeoHash;
  late UASRestrictionsFailure testUASRestrictionsFailure;
  late List<RestrictionEntity> testRestrictionEntities;

  setUp(
    () {
      mockUASRestrictionsRepository = MockUASRestrictionsRepository();
      uASRestrictionsBloc = UASRestrictionsBloc(
        mockUASRestrictionsRepository,
      );

      testGeoHash = 'testGeoHash';
      testUASRestrictionsFailure = UASRestrictionsFailure();
      testRestrictionEntities = List<RestrictionEntity>.generate(
        10,
        (index) => RestrictionEntity(
          id: 'testId$index',
          properties: PropertiesEntity(
            type: RestrictionType.prohibited,
            country: 'testRestrictionEntityCountry$index',
            upperLimit: 'testRestrictionEntityUpperLimit$index',
            lowerLimit: 'testRestrictionEntityLowerLimit$index',
            message: 'testRestrictionEntityMessage$index',
            additionLinks: [
              AdditionalLinkEntity(
                link: 'testRestrictionEntityAdditionalLinkEntityLink$index',
                name: 'testRestrictionEntityAdditionalLinkEntityName$index',
              ),
            ],
          ),
          geometry: GeometryEntity(
            type: GeometryType.polygon,
            coordinates: [
              [
                [
                  index.toDouble(),
                  index.toDouble(),
                ],
                [
                  index.toDouble(),
                  index.toDouble(),
                ],
                [
                  index.toDouble(),
                  index.toDouble(),
                ],
                [
                  index.toDouble(),
                  index.toDouble(),
                ],
              ],
            ],
          ),
        ),
      );
    },
  );

  blocTest<UASRestrictionsBloc, UASRestrictionsState>(
    '''
      Should emit [UASRestrictionsState.gettingRestrictions()] first then 
      [UASRestrictionsState.failedToGetRestrictions()] when 
      [UASRestrictionsEvent.getRestrictions()] fails
    ''',
    build: () => uASRestrictionsBloc,
    setUp: () {
      when(
        mockUASRestrictionsRepository.getRestrictionsUsing(
          geoHash: anyNamed(
            'geoHash',
          ),
        ),
      ).thenAnswer(
        (_) async => Left(
          testUASRestrictionsFailure,
        ),
      );
    },
    act: (bloc) => bloc.add(
      UASRestrictionsEvent.getRestrictions(
        geoHash: testGeoHash,
      ),
    ),
    expect: () => <UASRestrictionsState>[
      const UASRestrictionsState.gettingRestrictions(),
      UASRestrictionsState.failedToGetRestrictions(
        uasRestrictionsFailure: testUASRestrictionsFailure,
      ),
    ],
    verify: (_) {
      verify(
        mockUASRestrictionsRepository.getRestrictionsUsing(
          geoHash: testGeoHash,
        ),
      ).called(1);

      verifyNoMoreInteractions(
        mockUASRestrictionsRepository,
      );
    },
  );

  blocTest<UASRestrictionsBloc, UASRestrictionsState>(
    '''
      Should emit [UASRestrictionsState.gettingRestrictions()] first then 
      [UASRestrictionsState.gotRestrictions()] when 
      [UASRestrictionsEvent.getRestrictions()] succeeds
    ''',
    build: () => uASRestrictionsBloc,
    setUp: () {
      when(
        mockUASRestrictionsRepository.getRestrictionsUsing(
          geoHash: anyNamed(
            'geoHash',
          ),
        ),
      ).thenAnswer(
        (_) async => Right(
          testRestrictionEntities,
        ),
      );
    },
    act: (bloc) => bloc.add(
      UASRestrictionsEvent.getRestrictions(
        geoHash: testGeoHash,
      ),
    ),
    expect: () => <UASRestrictionsState>[
      const UASRestrictionsState.gettingRestrictions(),
      UASRestrictionsState.gotRestrictions(
        geoHash: testGeoHash,
        restrictionEntities: testRestrictionEntities,
      ),
    ],
    verify: (_) {
      verify(
        mockUASRestrictionsRepository.getRestrictionsUsing(
          geoHash: testGeoHash,
        ),
      ).called(1);

      verifyNoMoreInteractions(
        mockUASRestrictionsRepository,
      );
    },
  );

  tearDown(
    () {
      uASRestrictionsBloc.close();
    },
  );
}
