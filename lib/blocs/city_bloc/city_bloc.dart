import 'package:bloc/bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/models/city/city.dart';
import 'package:weather_app/services/location_service.dart';
import 'package:weather_app/services/router.dart';
import 'package:weather_app/services/weather_service.dart';

part 'city_event.dart';
part 'city_state.dart';
part 'city_bloc.freezed.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  final appService = GetIt.I<IAppService>();
  final locationService = GetIt.I<ILocationService>();

  CityBloc() : super(CityState()) {
    on<CityEventSearchByName>(_searchCityByName);
    on<CityEventSearchByCurrentLocation>(_searchByCurrentLocation);
  }
  void _searchCityByName(
    CityEventSearchByName event,
    Emitter<CityState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          isLoading: true,
          error: null,
        ),
      );
      final cities =
          await appService.searchCityBasedOnName(cityName: event.cityName);
      emit(
        state.copyWith(
          isLoading: false,
          cities: cities,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          error: 'Error searching for the city. Please try again.',
        ),
      );
    }
  }

  void _searchByCurrentLocation(
    CityEventSearchByCurrentLocation event,
    Emitter<CityState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          isLoading: true,
          error: null,
        ),
      );
      final location = await locationService.getCurrentLocation();
      final context = AppRouter.currentContext;
      if (context.mounted) {
        AppRouter.currentContext.push(
          Routes.weatherDetail.pathWithParams(
            pathParams: {
              'lat': location.latitude.toString(),
              'lon': location.longitude.toString(),
            },
          ),
        );
      }
      emit(
        state.copyWith(
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          error: 'Error searching for the city. Please try again.',
        ),
      );
    }
  }
}
