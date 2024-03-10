import 'package:get_it/get_it.dart';
import 'package:weather_app/common/helpers.dart';
import 'package:weather_app/services/location_service.dart';

import 'weather_service.dart';

class ServiceLocator {
  static void setup() {
    GetIt.I.registerSingleton<IAppService>(AppService());
    GetIt.I.registerSingleton<ILocationService>(LocationService());
    GetIt.I.registerSingleton<Helpers>(Helpers());
  }
}
