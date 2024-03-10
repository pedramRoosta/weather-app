import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/blocs/app_bloc/app_bloc.dart';
import 'package:weather_app/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app/services/weather_service.dart';

import 'mocks.dart';
import 'model_data.dart';

void main() {
  late WeatherBloc weatherBloc;
  late MockAppService mockAppService;

  setUpAll(() {
    mockAppService = MockAppService();
    GetIt.I.registerSingleton<IAppService>(mockAppService);
  });

  tearDownAll(() {
    GetIt.I.reset();
  });
  blocTest<WeatherBloc, WeatherState>(
    'emits [loading, loaded] when WeatherEventLoadWeather succeeds',
    build: () {
      weatherBloc = WeatherBloc();
      when(
        () => mockAppService.loadWeather(
          lat: 0,
          lon: 0,
          temperatureUnit: TemperatureUnit.metric,
        ),
      ).thenAnswer((_) async => ModelData.weatherModel);
      return weatherBloc;
    },
    act: (bloc) => bloc.add(
      const WeatherEventLoadWeather(
        lat: 0,
        lon: 0,
        temperatureUnit: TemperatureUnit.metric,
      ),
    ),
    expect: () => <WeatherState>[
      WeatherState(isLoading: true, error: null),
      WeatherState(
        isLoading: false,
        weatherData: ModelData.weatherModel,
        selectedDay: ModelData.weatherModel.list.first,
        selectedLat: 0,
        selectedLon: 0,
      ),
    ],
  );

  blocTest<WeatherBloc, WeatherState>(
    'emits [loading, error] when WeatherEventLoadWeather fails',
    build: () {
      weatherBloc = WeatherBloc();
      when(
        () => mockAppService.loadWeather(
          lat: 0,
          lon: 0,
          temperatureUnit: TemperatureUnit.metric,
        ),
      ).thenThrow(Exception());
      return weatherBloc;
    },
    act: (bloc) => bloc.add(
      const WeatherEventLoadWeather(
        lat: 0,
        lon: 0,
        temperatureUnit: TemperatureUnit.metric,
      ),
    ),
    expect: () => <WeatherState>[
      WeatherState(isLoading: true, error: null),
      WeatherState(
        isLoading: false,
        error: 'Error loading the weather. Please try again.',
      ),
    ],
  );
}
