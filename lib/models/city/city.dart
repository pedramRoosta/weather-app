import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City with _$City {
  const City._();

  const factory City({
    required String name,
    required double lat,
    required double lon,
    required String country,
    String? state,
  }) = _City;

  factory City.fromJson(Map<String, Object?> json) => _$CityFromJson(json);
}
