part of 'city_bloc.dart';

@freezed
class CityState with _$CityState {
  const CityState._();

  factory CityState({
    @Default(false) bool isLoading,
    City? selectedCity,
    List<City>? cities,
    @Default(null) String? error,
  }) = _CityState;
}
