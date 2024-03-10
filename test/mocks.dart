import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/blocs/app_bloc/app_bloc.dart';
import 'package:weather_app/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app/common/helpers.dart';
import 'package:weather_app/services/location_service.dart';
import 'package:weather_app/services/weather_service.dart';

class MockAppService extends Mock implements IAppService {}

class MockHelper extends Mock implements Helpers {}

class MockLocationService extends Mock implements ILocationService {}

class MockWeatherBloc extends MockBloc<WeatherEvent, WeatherState>
    implements WeatherBloc {}

class MockAppBloc extends MockBloc<AppEvent, AppState> implements AppBloc {}
