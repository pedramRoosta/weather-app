import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/blocs/app_bloc/app_bloc.dart';
import 'package:weather_app/blocs/city_bloc/city_bloc.dart';
import 'package:weather_app/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app/screens/city_search_screen.dart';
import 'package:weather_app/screens/weather_detail_screen.dart';

import '../../common/constants.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: Routes.citySearch.path,
    navigatorKey: AppConstants.rootNavigatorKey,
    routes: [
      GoRoute(
        path: Routes.citySearch.path,
        builder: (context, state) => BlocProvider(
          create: (context) => CityBloc(),
          child: CitySearchScreen(),
        ),
      ),
      GoRoute(
        path: Routes.weatherDetail.path,
        builder: (context, state) {
          final lat = double.parse(state.pathParameters['lat'] ?? '0');
          final lon = double.parse(state.pathParameters['lon'] ?? '0');
          final appBloc = context.read<AppBloc>();

          final weatherBloc = WeatherBloc()
            ..add(
              WeatherEvent.loadWeather(
                lat: lat,
                lon: lon,
                temperatureUnit: appBloc.state.temperatureUnit,
              ),
            );
          return BlocProvider(
            create: (context) => weatherBloc,
            child: const WeatherDetailScreen(),
          );
        },
      ),
    ],
  );

  static BuildContext get currentContext =>
      router.routerDelegate.navigatorKey.currentContext!;
}

enum Routes {
  citySearch('/citySearch'),
  weatherDetail('/weahterDetail/:lat/:lon'),
  ;

  const Routes(this.path);
  final String path;

  String pathWithParams({
    Map<String, String> pathParams = const {},
  }) {
    var finalPath = path;
    if (pathParams.isNotEmpty) {
      pathParams.forEach((key, value) {
        finalPath = finalPath.replaceAll(':$key', value);
      });
    }

    return finalPath;
  }
}
