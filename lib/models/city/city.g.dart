// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      name: json['name'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      country: json['country'] as String,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
      'country': instance.country,
      'state': instance.state,
    };
