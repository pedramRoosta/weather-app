import 'package:bloc/bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc()
      : super(AppState(
            isDarkMode: false, temperatureUnit: TemperatureUnit.standard)) {
    on<AppEventSetTheme>(_setTheme);
    on<AppEventSetTemparatureUnit>(_setTemparature);
  }
  void _setTheme(
    AppEventSetTheme event,
    Emitter<AppState> emit,
  ) {
    emit(
      state.copyWith(
        isDarkMode: event.isDarkMode,
      ),
    );
  }

  void _setTemparature(
    AppEventSetTemparatureUnit event,
    Emitter<AppState> emit,
  ) async {
    emit(
      state.copyWith(
        temperatureUnit: event.unit,
      ),
    );
  }
}
