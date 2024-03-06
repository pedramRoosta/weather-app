import 'package:Weather_app/city_search_screen.dart';

import 'package:go_router/go_router.dart';

import '../../common/constants.dart';

final router = GoRouter(
  initialLocation: Routes.citySearch.path,
  navigatorKey: AppConstants.rootNavigatorKey,
  routes: [
    GoRoute(
      path: Routes.citySearch.path,
      builder: (context, state) => const CitySearchScreen(),
    ),
    GoRoute(
      path: Routes.weatherDetail.path,
      builder: (context, state) => const CitySearchScreen(),
    ),
  ],
);

enum Routes {
  citySearch('/citySearch'),
  weatherDetail('/weahterDetail'),
  ;

  const Routes(this.path);
  final String path;
}
