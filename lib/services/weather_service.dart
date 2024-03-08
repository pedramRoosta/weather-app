import 'package:dio/dio.dart';
import 'package:weather_app/blocs/app_bloc/app_bloc.dart';
import 'package:weather_app/models/city/city.dart';
import 'package:weather_app/models/weather/weather.dart';

abstract class IAppService {
  static const String _baseUrl = 'http://api.openweathermap.org/';
  static const String _apiAppId = '63fa90917ce5cef5f3bd43d1f59666c3';

  final dio = Dio(
    BaseOptions(
      baseUrl: _baseUrl,
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );
  Future<List<City>> searchCityBasedOnName({
    required String cityName,
  });
  Future<WeatherModel?> loadWeather({
    required double lat,
    required double lon,
    required TemperatureUnit temperatureUnit,
  });
}

class AppService extends IAppService {
  @override
  Future<List<City>> searchCityBasedOnName({
    required String cityName,
  }) async {
    final List<City> cities = [];
    var response = await dio.get(
      'geo/1.0/direct?q=$cityName&limit=5&appid=${IAppService._apiAppId}',
    );

    if (response.statusCode == 200 && response.data != null) {
      for (var city in response.data) {
        cities.add(City.fromJson(city as Map<String, dynamic>));
      }
    }
    return cities;
  }

  @override
  Future<WeatherModel?> loadWeather({
    required double lat,
    required double lon,
    required TemperatureUnit temperatureUnit,
  }) async {
    var response = await dio.get(
      'data/2.5/forecast?lat=$lat&lon=$lon&appid=${IAppService._apiAppId}&units=${temperatureUnit.name}',
    );
    if (response.statusCode == 200 && response.data != null) {
      final List<WeatherItem> temp = [];
      final model = WeatherModel.fromJson(response.data);
      var currentDay = DateTime.now();
      for (var element in model.list) {
        if (element.dt_txt.day == currentDay.day) {
          temp.add(element);
          currentDay = currentDay.add(const Duration(days: 1));
        }
      }
      return model.copyWith(list: temp);
    }
    return null;
  }
}
