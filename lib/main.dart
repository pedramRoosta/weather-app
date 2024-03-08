import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/app_bloc/app_bloc.dart';

import 'package:weather_app/services/router.dart';
import 'package:weather_app/services/service_locator.dart';

void main() {
  ServiceLocator.setup();
  runApp(
    const Home(),
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Weather App',
            routerConfig: AppRouter.router,
            theme: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.purple,
                brightness:
                    state.isDarkMode ? Brightness.dark : Brightness.light,
              ),
            ),
          );
        },
      ),
    );
  }
}
