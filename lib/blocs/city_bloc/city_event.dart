part of 'city_bloc.dart';

@freezed
class CityEvent with _$CityEvent {
  const factory CityEvent.searchByName({
    required String cityName,
  }) = CityEventSearchByName;
  const factory CityEvent.searchByCurrentLocation() =
      CityEventSearchByCurrentLocation;
}
