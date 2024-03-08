part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.toggleTheme({
    required bool isDarkMode,
  }) = AppEventSetTheme;

  const factory AppEvent.setTemparatureUnit({
    required TemperatureUnit unit,
  }) = AppEventSetTemparatureUnit;
}

enum TemperatureUnit {
  standard('Standard'),
  metric('Metric'),
  imperial('Imperial');

  const TemperatureUnit(this.title);
  final String title;

  String get temperatureUnitAbbreviation {
    switch (this) {
      case TemperatureUnit.metric:
        return 'C';
      case TemperatureUnit.imperial:
        return 'F';
      case TemperatureUnit.standard:
        return 'K';
    }
  }

  String get temperatureUnitSymbol {
    switch (this) {
      case TemperatureUnit.metric:
        return '\u2103';
      case TemperatureUnit.imperial:
        return '\u2109';
      case TemperatureUnit.standard:
        return '\u00B0K';
    }
  }
}
