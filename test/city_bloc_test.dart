import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/blocs/city_bloc/city_bloc.dart';
import 'package:weather_app/models/city/city.dart';
import 'package:weather_app/services/location_service.dart';
import 'package:weather_app/services/weather_service.dart';

import 'mocks.dart';

void main() {
  group('CityBloc', () {
    late MockAppService mockAppService;
    late MockLocationService mockLocationService;

    setUp(() {
      mockAppService = MockAppService();
      mockLocationService = MockLocationService();
      GetIt.I.registerSingleton<IAppService>(mockAppService);
      GetIt.I.registerSingleton<ILocationService>(mockLocationService);
    });
    tearDownAll(() {
      GetIt.I.reset();
    });

    blocTest<CityBloc, CityState>(
      'emits [City] with isLoading false when searchCityBasedOnName is added',
      setUp: () {
        when(() => mockAppService.searchCityBasedOnName(cityName: 'TestCity'))
            .thenAnswer(
          (_) async =>
              [const City(name: 'name', lat: 4, lon: 5, country: 'US')],
        );
      },
      build: () => CityBloc(),
      seed: () => CityState(),
      act: (bloc) =>
          bloc.add(const CityEventSearchByName(cityName: 'TestCity')),
      verify: (bloc) {
        verify(() => mockAppService.searchCityBasedOnName(cityName: 'TestCity'))
            .called(1);
      },
      expect: () => [
        CityState(isLoading: true, error: null),
        CityState(
          isLoading: false,
          cities: [
            const City(
              name: 'name',
              lat: 4,
              lon: 5,
              country: 'US',
            ),
          ],
        ),
      ],
    );

    blocTest<CityBloc, CityState>(
      'emits [CityState] with isLoading false when CityEventSearchByCurrentLocation is added',
      setUp: () {
        final position = Position(
          longitude: 4,
          latitude: 5,
          timestamp: DateTime.now(),
          accuracy: 1,
          altitude: 1,
          altitudeAccuracy: 1,
          heading: 1,
          headingAccuracy: 1,
          speed: 1,
          speedAccuracy: 1,
        );
        when(() => mockLocationService.getCurrentLocation()).thenAnswer(
          (_) async => position,
        );
      },
      build: () => CityBloc(),
      seed: () => CityState(),
      act: (bloc) => bloc.add(const CityEventSearchByCurrentLocation()),
      verify: (bloc) {
        verify(() => mockLocationService.getCurrentLocation()).called(1);
      },
      expect: () => [
        CityState(isLoading: true, error: null),
        CityState(isLoading: false),
      ],
    );
  });
}
