import 'package:get_it/get_it.dart';

import 'weather_service.dart';

class ServiceLocator {
  static void setup() {
    GetIt.I.registerSingleton<IWeatherService>(WeatherService());
  }
}
