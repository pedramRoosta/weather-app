import 'package:Weather_app/services/router.dart';
import 'package:Weather_app/services/service_locator.dart';
import 'package:flutter/material.dart';

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
    return MaterialApp.router(
      title: 'Weather App',
      routerConfig: router,
    );
  }
}
