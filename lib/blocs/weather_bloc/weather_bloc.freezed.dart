// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double lat, double lon, TemperatureUnit temperatureUnit)
        loadWeather,
    required TResult Function(int id) selectDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double lon, TemperatureUnit temperatureUnit)?
        loadWeather,
    TResult? Function(int id)? selectDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lon, TemperatureUnit temperatureUnit)?
        loadWeather,
    TResult Function(int id)? selectDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherEventLoadWeather value) loadWeather,
    required TResult Function(WeatherEventSelectDay value) selectDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherEventLoadWeather value)? loadWeather,
    TResult? Function(WeatherEventSelectDay value)? selectDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherEventLoadWeather value)? loadWeather,
    TResult Function(WeatherEventSelectDay value)? selectDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WeatherEventLoadWeatherImplCopyWith<$Res> {
  factory _$$WeatherEventLoadWeatherImplCopyWith(
          _$WeatherEventLoadWeatherImpl value,
          $Res Function(_$WeatherEventLoadWeatherImpl) then) =
      __$$WeatherEventLoadWeatherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double lat, double lon, TemperatureUnit temperatureUnit});
}

/// @nodoc
class __$$WeatherEventLoadWeatherImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$WeatherEventLoadWeatherImpl>
    implements _$$WeatherEventLoadWeatherImplCopyWith<$Res> {
  __$$WeatherEventLoadWeatherImplCopyWithImpl(
      _$WeatherEventLoadWeatherImpl _value,
      $Res Function(_$WeatherEventLoadWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
    Object? temperatureUnit = null,
  }) {
    return _then(_$WeatherEventLoadWeatherImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      temperatureUnit: null == temperatureUnit
          ? _value.temperatureUnit
          : temperatureUnit // ignore: cast_nullable_to_non_nullable
              as TemperatureUnit,
    ));
  }
}

/// @nodoc

class _$WeatherEventLoadWeatherImpl implements WeatherEventLoadWeather {
  const _$WeatherEventLoadWeatherImpl(
      {required this.lat, required this.lon, required this.temperatureUnit});

  @override
  final double lat;
  @override
  final double lon;
  @override
  final TemperatureUnit temperatureUnit;

  @override
  String toString() {
    return 'WeatherEvent.loadWeather(lat: $lat, lon: $lon, temperatureUnit: $temperatureUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherEventLoadWeatherImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.temperatureUnit, temperatureUnit) ||
                other.temperatureUnit == temperatureUnit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lon, temperatureUnit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherEventLoadWeatherImplCopyWith<_$WeatherEventLoadWeatherImpl>
      get copyWith => __$$WeatherEventLoadWeatherImplCopyWithImpl<
          _$WeatherEventLoadWeatherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double lat, double lon, TemperatureUnit temperatureUnit)
        loadWeather,
    required TResult Function(int id) selectDay,
  }) {
    return loadWeather(lat, lon, temperatureUnit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double lon, TemperatureUnit temperatureUnit)?
        loadWeather,
    TResult? Function(int id)? selectDay,
  }) {
    return loadWeather?.call(lat, lon, temperatureUnit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lon, TemperatureUnit temperatureUnit)?
        loadWeather,
    TResult Function(int id)? selectDay,
    required TResult orElse(),
  }) {
    if (loadWeather != null) {
      return loadWeather(lat, lon, temperatureUnit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherEventLoadWeather value) loadWeather,
    required TResult Function(WeatherEventSelectDay value) selectDay,
  }) {
    return loadWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherEventLoadWeather value)? loadWeather,
    TResult? Function(WeatherEventSelectDay value)? selectDay,
  }) {
    return loadWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherEventLoadWeather value)? loadWeather,
    TResult Function(WeatherEventSelectDay value)? selectDay,
    required TResult orElse(),
  }) {
    if (loadWeather != null) {
      return loadWeather(this);
    }
    return orElse();
  }
}

abstract class WeatherEventLoadWeather implements WeatherEvent {
  const factory WeatherEventLoadWeather(
          {required final double lat,
          required final double lon,
          required final TemperatureUnit temperatureUnit}) =
      _$WeatherEventLoadWeatherImpl;

  double get lat;
  double get lon;
  TemperatureUnit get temperatureUnit;
  @JsonKey(ignore: true)
  _$$WeatherEventLoadWeatherImplCopyWith<_$WeatherEventLoadWeatherImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherEventSelectDayImplCopyWith<$Res> {
  factory _$$WeatherEventSelectDayImplCopyWith(
          _$WeatherEventSelectDayImpl value,
          $Res Function(_$WeatherEventSelectDayImpl) then) =
      __$$WeatherEventSelectDayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$WeatherEventSelectDayImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$WeatherEventSelectDayImpl>
    implements _$$WeatherEventSelectDayImplCopyWith<$Res> {
  __$$WeatherEventSelectDayImplCopyWithImpl(_$WeatherEventSelectDayImpl _value,
      $Res Function(_$WeatherEventSelectDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$WeatherEventSelectDayImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WeatherEventSelectDayImpl implements WeatherEventSelectDay {
  const _$WeatherEventSelectDayImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'WeatherEvent.selectDay(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherEventSelectDayImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherEventSelectDayImplCopyWith<_$WeatherEventSelectDayImpl>
      get copyWith => __$$WeatherEventSelectDayImplCopyWithImpl<
          _$WeatherEventSelectDayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double lat, double lon, TemperatureUnit temperatureUnit)
        loadWeather,
    required TResult Function(int id) selectDay,
  }) {
    return selectDay(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double lon, TemperatureUnit temperatureUnit)?
        loadWeather,
    TResult? Function(int id)? selectDay,
  }) {
    return selectDay?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lon, TemperatureUnit temperatureUnit)?
        loadWeather,
    TResult Function(int id)? selectDay,
    required TResult orElse(),
  }) {
    if (selectDay != null) {
      return selectDay(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherEventLoadWeather value) loadWeather,
    required TResult Function(WeatherEventSelectDay value) selectDay,
  }) {
    return selectDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherEventLoadWeather value)? loadWeather,
    TResult? Function(WeatherEventSelectDay value)? selectDay,
  }) {
    return selectDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherEventLoadWeather value)? loadWeather,
    TResult Function(WeatherEventSelectDay value)? selectDay,
    required TResult orElse(),
  }) {
    if (selectDay != null) {
      return selectDay(this);
    }
    return orElse();
  }
}

abstract class WeatherEventSelectDay implements WeatherEvent {
  const factory WeatherEventSelectDay({required final int id}) =
      _$WeatherEventSelectDayImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$WeatherEventSelectDayImplCopyWith<_$WeatherEventSelectDayImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  bool get isLoading => throw _privateConstructorUsedError;
  WeatherModel? get weatherData => throw _privateConstructorUsedError;
  WeatherItem? get selectedDay => throw _privateConstructorUsedError;
  double? get selectedLat => throw _privateConstructorUsedError;
  double? get selectedLon => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {bool isLoading,
      WeatherModel? weatherData,
      WeatherItem? selectedDay,
      double? selectedLat,
      double? selectedLon,
      String? error});

  $WeatherModelCopyWith<$Res>? get weatherData;
  $WeatherItemCopyWith<$Res>? get selectedDay;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? weatherData = freezed,
    Object? selectedDay = freezed,
    Object? selectedLat = freezed,
    Object? selectedLon = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherData: freezed == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      selectedDay: freezed == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as WeatherItem?,
      selectedLat: freezed == selectedLat
          ? _value.selectedLat
          : selectedLat // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedLon: freezed == selectedLon
          ? _value.selectedLon
          : selectedLon // ignore: cast_nullable_to_non_nullable
              as double?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherModelCopyWith<$Res>? get weatherData {
    if (_value.weatherData == null) {
      return null;
    }

    return $WeatherModelCopyWith<$Res>(_value.weatherData!, (value) {
      return _then(_value.copyWith(weatherData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherItemCopyWith<$Res>? get selectedDay {
    if (_value.selectedDay == null) {
      return null;
    }

    return $WeatherItemCopyWith<$Res>(_value.selectedDay!, (value) {
      return _then(_value.copyWith(selectedDay: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherStateImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$WeatherStateImplCopyWith(
          _$WeatherStateImpl value, $Res Function(_$WeatherStateImpl) then) =
      __$$WeatherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      WeatherModel? weatherData,
      WeatherItem? selectedDay,
      double? selectedLat,
      double? selectedLon,
      String? error});

  @override
  $WeatherModelCopyWith<$Res>? get weatherData;
  @override
  $WeatherItemCopyWith<$Res>? get selectedDay;
}

/// @nodoc
class __$$WeatherStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateImpl>
    implements _$$WeatherStateImplCopyWith<$Res> {
  __$$WeatherStateImplCopyWithImpl(
      _$WeatherStateImpl _value, $Res Function(_$WeatherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? weatherData = freezed,
    Object? selectedDay = freezed,
    Object? selectedLat = freezed,
    Object? selectedLon = freezed,
    Object? error = freezed,
  }) {
    return _then(_$WeatherStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherData: freezed == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      selectedDay: freezed == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as WeatherItem?,
      selectedLat: freezed == selectedLat
          ? _value.selectedLat
          : selectedLat // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedLon: freezed == selectedLon
          ? _value.selectedLon
          : selectedLon // ignore: cast_nullable_to_non_nullable
              as double?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WeatherStateImpl extends _WeatherState {
  _$WeatherStateImpl(
      {this.isLoading = false,
      this.weatherData,
      this.selectedDay,
      this.selectedLat,
      this.selectedLon,
      this.error = null})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final WeatherModel? weatherData;
  @override
  final WeatherItem? selectedDay;
  @override
  final double? selectedLat;
  @override
  final double? selectedLon;
  @override
  @JsonKey()
  final String? error;

  @override
  String toString() {
    return 'WeatherState(isLoading: $isLoading, weatherData: $weatherData, selectedDay: $selectedDay, selectedLat: $selectedLat, selectedLon: $selectedLon, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.weatherData, weatherData) ||
                other.weatherData == weatherData) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.selectedLat, selectedLat) ||
                other.selectedLat == selectedLat) &&
            (identical(other.selectedLon, selectedLon) ||
                other.selectedLon == selectedLon) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, weatherData,
      selectedDay, selectedLat, selectedLon, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      __$$WeatherStateImplCopyWithImpl<_$WeatherStateImpl>(this, _$identity);
}

abstract class _WeatherState extends WeatherState {
  factory _WeatherState(
      {final bool isLoading,
      final WeatherModel? weatherData,
      final WeatherItem? selectedDay,
      final double? selectedLat,
      final double? selectedLon,
      final String? error}) = _$WeatherStateImpl;
  _WeatherState._() : super._();

  @override
  bool get isLoading;
  @override
  WeatherModel? get weatherData;
  @override
  WeatherItem? get selectedDay;
  @override
  double? get selectedLat;
  @override
  double? get selectedLon;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
