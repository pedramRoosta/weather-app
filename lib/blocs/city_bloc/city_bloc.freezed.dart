// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityName) searchByName,
    required TResult Function() searchByCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cityName)? searchByName,
    TResult? Function()? searchByCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityName)? searchByName,
    TResult Function()? searchByCurrentLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityEventSearchByName value) searchByName,
    required TResult Function(CityEventSearchByCurrentLocation value)
        searchByCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityEventSearchByName value)? searchByName,
    TResult? Function(CityEventSearchByCurrentLocation value)?
        searchByCurrentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityEventSearchByName value)? searchByName,
    TResult Function(CityEventSearchByCurrentLocation value)?
        searchByCurrentLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityEventCopyWith<$Res> {
  factory $CityEventCopyWith(CityEvent value, $Res Function(CityEvent) then) =
      _$CityEventCopyWithImpl<$Res, CityEvent>;
}

/// @nodoc
class _$CityEventCopyWithImpl<$Res, $Val extends CityEvent>
    implements $CityEventCopyWith<$Res> {
  _$CityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CityEventSearchByNameImplCopyWith<$Res> {
  factory _$$CityEventSearchByNameImplCopyWith(
          _$CityEventSearchByNameImpl value,
          $Res Function(_$CityEventSearchByNameImpl) then) =
      __$$CityEventSearchByNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cityName});
}

/// @nodoc
class __$$CityEventSearchByNameImplCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res, _$CityEventSearchByNameImpl>
    implements _$$CityEventSearchByNameImplCopyWith<$Res> {
  __$$CityEventSearchByNameImplCopyWithImpl(_$CityEventSearchByNameImpl _value,
      $Res Function(_$CityEventSearchByNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
  }) {
    return _then(_$CityEventSearchByNameImpl(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CityEventSearchByNameImpl implements CityEventSearchByName {
  const _$CityEventSearchByNameImpl({required this.cityName});

  @override
  final String cityName;

  @override
  String toString() {
    return 'CityEvent.searchByName(cityName: $cityName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityEventSearchByNameImpl &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityEventSearchByNameImplCopyWith<_$CityEventSearchByNameImpl>
      get copyWith => __$$CityEventSearchByNameImplCopyWithImpl<
          _$CityEventSearchByNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityName) searchByName,
    required TResult Function() searchByCurrentLocation,
  }) {
    return searchByName(cityName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cityName)? searchByName,
    TResult? Function()? searchByCurrentLocation,
  }) {
    return searchByName?.call(cityName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityName)? searchByName,
    TResult Function()? searchByCurrentLocation,
    required TResult orElse(),
  }) {
    if (searchByName != null) {
      return searchByName(cityName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityEventSearchByName value) searchByName,
    required TResult Function(CityEventSearchByCurrentLocation value)
        searchByCurrentLocation,
  }) {
    return searchByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityEventSearchByName value)? searchByName,
    TResult? Function(CityEventSearchByCurrentLocation value)?
        searchByCurrentLocation,
  }) {
    return searchByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityEventSearchByName value)? searchByName,
    TResult Function(CityEventSearchByCurrentLocation value)?
        searchByCurrentLocation,
    required TResult orElse(),
  }) {
    if (searchByName != null) {
      return searchByName(this);
    }
    return orElse();
  }
}

abstract class CityEventSearchByName implements CityEvent {
  const factory CityEventSearchByName({required final String cityName}) =
      _$CityEventSearchByNameImpl;

  String get cityName;
  @JsonKey(ignore: true)
  _$$CityEventSearchByNameImplCopyWith<_$CityEventSearchByNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CityEventSearchByCurrentLocationImplCopyWith<$Res> {
  factory _$$CityEventSearchByCurrentLocationImplCopyWith(
          _$CityEventSearchByCurrentLocationImpl value,
          $Res Function(_$CityEventSearchByCurrentLocationImpl) then) =
      __$$CityEventSearchByCurrentLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CityEventSearchByCurrentLocationImplCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res,
        _$CityEventSearchByCurrentLocationImpl>
    implements _$$CityEventSearchByCurrentLocationImplCopyWith<$Res> {
  __$$CityEventSearchByCurrentLocationImplCopyWithImpl(
      _$CityEventSearchByCurrentLocationImpl _value,
      $Res Function(_$CityEventSearchByCurrentLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CityEventSearchByCurrentLocationImpl
    implements CityEventSearchByCurrentLocation {
  const _$CityEventSearchByCurrentLocationImpl();

  @override
  String toString() {
    return 'CityEvent.searchByCurrentLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityEventSearchByCurrentLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityName) searchByName,
    required TResult Function() searchByCurrentLocation,
  }) {
    return searchByCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cityName)? searchByName,
    TResult? Function()? searchByCurrentLocation,
  }) {
    return searchByCurrentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityName)? searchByName,
    TResult Function()? searchByCurrentLocation,
    required TResult orElse(),
  }) {
    if (searchByCurrentLocation != null) {
      return searchByCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityEventSearchByName value) searchByName,
    required TResult Function(CityEventSearchByCurrentLocation value)
        searchByCurrentLocation,
  }) {
    return searchByCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityEventSearchByName value)? searchByName,
    TResult? Function(CityEventSearchByCurrentLocation value)?
        searchByCurrentLocation,
  }) {
    return searchByCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityEventSearchByName value)? searchByName,
    TResult Function(CityEventSearchByCurrentLocation value)?
        searchByCurrentLocation,
    required TResult orElse(),
  }) {
    if (searchByCurrentLocation != null) {
      return searchByCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class CityEventSearchByCurrentLocation implements CityEvent {
  const factory CityEventSearchByCurrentLocation() =
      _$CityEventSearchByCurrentLocationImpl;
}

/// @nodoc
mixin _$CityState {
  bool get isLoading => throw _privateConstructorUsedError;
  City? get selectedCity => throw _privateConstructorUsedError;
  List<City>? get cities => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityStateCopyWith<CityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityStateCopyWith<$Res> {
  factory $CityStateCopyWith(CityState value, $Res Function(CityState) then) =
      _$CityStateCopyWithImpl<$Res, CityState>;
  @useResult
  $Res call(
      {bool isLoading, City? selectedCity, List<City>? cities, String? error});

  $CityCopyWith<$Res>? get selectedCity;
}

/// @nodoc
class _$CityStateCopyWithImpl<$Res, $Val extends CityState>
    implements $CityStateCopyWith<$Res> {
  _$CityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectedCity = freezed,
    Object? cities = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as City?,
      cities: freezed == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get selectedCity {
    if (_value.selectedCity == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.selectedCity!, (value) {
      return _then(_value.copyWith(selectedCity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CityStateImplCopyWith<$Res>
    implements $CityStateCopyWith<$Res> {
  factory _$$CityStateImplCopyWith(
          _$CityStateImpl value, $Res Function(_$CityStateImpl) then) =
      __$$CityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, City? selectedCity, List<City>? cities, String? error});

  @override
  $CityCopyWith<$Res>? get selectedCity;
}

/// @nodoc
class __$$CityStateImplCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$CityStateImpl>
    implements _$$CityStateImplCopyWith<$Res> {
  __$$CityStateImplCopyWithImpl(
      _$CityStateImpl _value, $Res Function(_$CityStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectedCity = freezed,
    Object? cities = freezed,
    Object? error = freezed,
  }) {
    return _then(_$CityStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as City?,
      cities: freezed == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CityStateImpl extends _CityState {
  _$CityStateImpl(
      {this.isLoading = false,
      this.selectedCity,
      final List<City>? cities,
      this.error = null})
      : _cities = cities,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final City? selectedCity;
  final List<City>? _cities;
  @override
  List<City>? get cities {
    final value = _cities;
    if (value == null) return null;
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String? error;

  @override
  String toString() {
    return 'CityState(isLoading: $isLoading, selectedCity: $selectedCity, cities: $cities, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedCity, selectedCity) ||
                other.selectedCity == selectedCity) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, selectedCity,
      const DeepCollectionEquality().hash(_cities), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityStateImplCopyWith<_$CityStateImpl> get copyWith =>
      __$$CityStateImplCopyWithImpl<_$CityStateImpl>(this, _$identity);
}

abstract class _CityState extends CityState {
  factory _CityState(
      {final bool isLoading,
      final City? selectedCity,
      final List<City>? cities,
      final String? error}) = _$CityStateImpl;
  _CityState._() : super._();

  @override
  bool get isLoading;
  @override
  City? get selectedCity;
  @override
  List<City>? get cities;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$CityStateImplCopyWith<_$CityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
