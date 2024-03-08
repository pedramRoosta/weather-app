import 'package:bloc/bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/blocs/app_bloc/app_bloc.dart';
import 'package:weather_app/models/weather/weather.dart';
import 'package:weather_app/services/weather_service.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final appService = GetIt.I.get<IAppService>();

  WeatherBloc() : super(WeatherState()) {
    on<WeatherEventLoadWeather>(_loadWeather);
    on<WeatherEventSelectDay>(_selectDay);
  }
  void _loadWeather(
    WeatherEventLoadWeather event,
    Emitter<WeatherState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          isLoading: true,
          error: null,
        ),
      );
      final weatherData = await appService.loadWeather(
        lat: event.lat,
        lon: event.lon,
        temperatureUnit: event.temperatureUnit,
      );
      if (weatherData != null && weatherData.list.isNotEmpty) {
        emit(
          state.copyWith(
            isLoading: false,
            weatherData: weatherData,
            selectedDay: weatherData.list.first,
            selectedLat: event.lat,
            selectedLon: event.lon,
          ),
        );
      } else {
        errorHandling(emit);
      }
    } catch (e) {
      errorHandling(emit);
    }
  }

  void _selectDay(
    WeatherEventSelectDay event,
    Emitter<WeatherState> emit,
  ) async {
    try {
      final selectedDay = state.weatherData!.list
          .firstWhere((element) => element.dt == event.id);
      emit(
        state.copyWith(
          selectedDay: selectedDay,
        ),
      );
    } catch (e) {
      errorHandling(emit);
    }
  }

  void errorHandling(
    Emitter<WeatherState> emit,
  ) {
    emit(
      state.copyWith(
        isLoading: false,
        error: 'Error loading the weather. Please try again.',
      ),
    );
  }
}
