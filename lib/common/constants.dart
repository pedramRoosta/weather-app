import 'package:flutter/material.dart';

abstract class AppConstants {
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
}

abstract class StringConstants {
  static const citySearch = 'City Search';
  static const searchForCity = 'Search for your desired city';
  static const currentLocationText = 'or use your location to get the weather.';
  static const enterTheCity = 'Enter a city';
  static const noCity = 'No cities found';
  static const weatherDetail = 'Weather detail';
  static const humidity = 'Humidity';
  static const pressure = 'Pressure';
  static const wind = 'Wind';
  static const settings = 'Settings';
}
