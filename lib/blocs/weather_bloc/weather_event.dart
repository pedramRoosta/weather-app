part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.loadWeather({
    required double lat,
    required double lon,
    required TemperatureUnit temperatureUnit,
  }) = WeatherEventLoadWeather;
  const factory WeatherEvent.selectDay({
    required int id,
  }) = WeatherEventSelectDay;
}
