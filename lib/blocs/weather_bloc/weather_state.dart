part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const WeatherState._();

  factory WeatherState({
    @Default(false) bool isLoading,
    WeatherModel? weatherData,
    WeatherItem? selectedDay,
    double? selectedLat,
    double? selectedLon,
    @Default(null) String? error,
  }) = _WeatherState;
}
