part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const AppState._();

  factory AppState({
    @Default(false) bool isDarkMode,
    @Default(TemperatureUnit.metric) TemperatureUnit temperatureUnit,
  }) = _AppState;
}
