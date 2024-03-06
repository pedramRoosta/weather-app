import 'package:dio/dio.dart';

abstract class IWeatherService {
  static const String _baseUrl = 'http://api.openweathermap.org/';
  final dio = Dio(
    BaseOptions(
      baseUrl: _baseUrl,
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );
}

class WeatherService extends IWeatherService {}
