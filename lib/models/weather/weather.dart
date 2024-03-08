// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  factory WeatherModel({
    required String cod,
    required int message,
    required int cnt,
    required List<WeatherItem> list,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

@freezed
class WeatherItem with _$WeatherItem {
  factory WeatherItem({
    required int dt,
    required Main main,
    required List<Weather> weather,
    // required Clouds clouds,
    required Wind wind,
    required int visibility,
    required DateTime dt_txt,
  }) = _WeatherItem;

  factory WeatherItem.fromJson(Map<String, dynamic> json) =>
      _$WeatherItemFromJson(json);
}

@freezed
class Main with _$Main {
  factory Main({
    double? temp,
    double? feels_like,
    double? temp_min,
    double? temp_max,
    int? pressure,
    int? humidity,
    double? tempKf,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
class Weather with _$Weather {
  factory Weather({
    required int id,
    String? main,
    String? description,
    String? icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

// @freezed
// class Clouds with _$Clouds {
//   factory Clouds({
//     int? all,
//   }) = _Clouds;

//   factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
// }

@freezed
class Wind with _$Wind {
  factory Wind({
    double? speed,
    int? deg,
    double? gust,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
