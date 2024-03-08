// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkMode) toggleTheme,
    required TResult Function(TemperatureUnit unit) setTemparatureUnit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkMode)? toggleTheme,
    TResult? Function(TemperatureUnit unit)? setTemparatureUnit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkMode)? toggleTheme,
    TResult Function(TemperatureUnit unit)? setTemparatureUnit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppEventSetTheme value) toggleTheme,
    required TResult Function(AppEventSetTemparatureUnit value)
        setTemparatureUnit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppEventSetTheme value)? toggleTheme,
    TResult? Function(AppEventSetTemparatureUnit value)? setTemparatureUnit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppEventSetTheme value)? toggleTheme,
    TResult Function(AppEventSetTemparatureUnit value)? setTemparatureUnit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppEventSetThemeImplCopyWith<$Res> {
  factory _$$AppEventSetThemeImplCopyWith(_$AppEventSetThemeImpl value,
          $Res Function(_$AppEventSetThemeImpl) then) =
      __$$AppEventSetThemeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class __$$AppEventSetThemeImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppEventSetThemeImpl>
    implements _$$AppEventSetThemeImplCopyWith<$Res> {
  __$$AppEventSetThemeImplCopyWithImpl(_$AppEventSetThemeImpl _value,
      $Res Function(_$AppEventSetThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_$AppEventSetThemeImpl(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppEventSetThemeImpl implements AppEventSetTheme {
  const _$AppEventSetThemeImpl({required this.isDarkMode});

  @override
  final bool isDarkMode;

  @override
  String toString() {
    return 'AppEvent.toggleTheme(isDarkMode: $isDarkMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppEventSetThemeImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppEventSetThemeImplCopyWith<_$AppEventSetThemeImpl> get copyWith =>
      __$$AppEventSetThemeImplCopyWithImpl<_$AppEventSetThemeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkMode) toggleTheme,
    required TResult Function(TemperatureUnit unit) setTemparatureUnit,
  }) {
    return toggleTheme(isDarkMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkMode)? toggleTheme,
    TResult? Function(TemperatureUnit unit)? setTemparatureUnit,
  }) {
    return toggleTheme?.call(isDarkMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkMode)? toggleTheme,
    TResult Function(TemperatureUnit unit)? setTemparatureUnit,
    required TResult orElse(),
  }) {
    if (toggleTheme != null) {
      return toggleTheme(isDarkMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppEventSetTheme value) toggleTheme,
    required TResult Function(AppEventSetTemparatureUnit value)
        setTemparatureUnit,
  }) {
    return toggleTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppEventSetTheme value)? toggleTheme,
    TResult? Function(AppEventSetTemparatureUnit value)? setTemparatureUnit,
  }) {
    return toggleTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppEventSetTheme value)? toggleTheme,
    TResult Function(AppEventSetTemparatureUnit value)? setTemparatureUnit,
    required TResult orElse(),
  }) {
    if (toggleTheme != null) {
      return toggleTheme(this);
    }
    return orElse();
  }
}

abstract class AppEventSetTheme implements AppEvent {
  const factory AppEventSetTheme({required final bool isDarkMode}) =
      _$AppEventSetThemeImpl;

  bool get isDarkMode;
  @JsonKey(ignore: true)
  _$$AppEventSetThemeImplCopyWith<_$AppEventSetThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppEventSetTemparatureUnitImplCopyWith<$Res> {
  factory _$$AppEventSetTemparatureUnitImplCopyWith(
          _$AppEventSetTemparatureUnitImpl value,
          $Res Function(_$AppEventSetTemparatureUnitImpl) then) =
      __$$AppEventSetTemparatureUnitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TemperatureUnit unit});
}

/// @nodoc
class __$$AppEventSetTemparatureUnitImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppEventSetTemparatureUnitImpl>
    implements _$$AppEventSetTemparatureUnitImplCopyWith<$Res> {
  __$$AppEventSetTemparatureUnitImplCopyWithImpl(
      _$AppEventSetTemparatureUnitImpl _value,
      $Res Function(_$AppEventSetTemparatureUnitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
  }) {
    return _then(_$AppEventSetTemparatureUnitImpl(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as TemperatureUnit,
    ));
  }
}

/// @nodoc

class _$AppEventSetTemparatureUnitImpl implements AppEventSetTemparatureUnit {
  const _$AppEventSetTemparatureUnitImpl({required this.unit});

  @override
  final TemperatureUnit unit;

  @override
  String toString() {
    return 'AppEvent.setTemparatureUnit(unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppEventSetTemparatureUnitImpl &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppEventSetTemparatureUnitImplCopyWith<_$AppEventSetTemparatureUnitImpl>
      get copyWith => __$$AppEventSetTemparatureUnitImplCopyWithImpl<
          _$AppEventSetTemparatureUnitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkMode) toggleTheme,
    required TResult Function(TemperatureUnit unit) setTemparatureUnit,
  }) {
    return setTemparatureUnit(unit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkMode)? toggleTheme,
    TResult? Function(TemperatureUnit unit)? setTemparatureUnit,
  }) {
    return setTemparatureUnit?.call(unit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkMode)? toggleTheme,
    TResult Function(TemperatureUnit unit)? setTemparatureUnit,
    required TResult orElse(),
  }) {
    if (setTemparatureUnit != null) {
      return setTemparatureUnit(unit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppEventSetTheme value) toggleTheme,
    required TResult Function(AppEventSetTemparatureUnit value)
        setTemparatureUnit,
  }) {
    return setTemparatureUnit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppEventSetTheme value)? toggleTheme,
    TResult? Function(AppEventSetTemparatureUnit value)? setTemparatureUnit,
  }) {
    return setTemparatureUnit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppEventSetTheme value)? toggleTheme,
    TResult Function(AppEventSetTemparatureUnit value)? setTemparatureUnit,
    required TResult orElse(),
  }) {
    if (setTemparatureUnit != null) {
      return setTemparatureUnit(this);
    }
    return orElse();
  }
}

abstract class AppEventSetTemparatureUnit implements AppEvent {
  const factory AppEventSetTemparatureUnit(
      {required final TemperatureUnit unit}) = _$AppEventSetTemparatureUnitImpl;

  TemperatureUnit get unit;
  @JsonKey(ignore: true)
  _$$AppEventSetTemparatureUnitImplCopyWith<_$AppEventSetTemparatureUnitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  bool get isDarkMode => throw _privateConstructorUsedError;
  TemperatureUnit get temperatureUnit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({bool isDarkMode, TemperatureUnit temperatureUnit});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
    Object? temperatureUnit = null,
  }) {
    return _then(_value.copyWith(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      temperatureUnit: null == temperatureUnit
          ? _value.temperatureUnit
          : temperatureUnit // ignore: cast_nullable_to_non_nullable
              as TemperatureUnit,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDarkMode, TemperatureUnit temperatureUnit});
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
    Object? temperatureUnit = null,
  }) {
    return _then(_$AppStateImpl(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      temperatureUnit: null == temperatureUnit
          ? _value.temperatureUnit
          : temperatureUnit // ignore: cast_nullable_to_non_nullable
              as TemperatureUnit,
    ));
  }
}

/// @nodoc

class _$AppStateImpl extends _AppState {
  _$AppStateImpl(
      {this.isDarkMode = false, this.temperatureUnit = TemperatureUnit.metric})
      : super._();

  @override
  @JsonKey()
  final bool isDarkMode;
  @override
  @JsonKey()
  final TemperatureUnit temperatureUnit;

  @override
  String toString() {
    return 'AppState(isDarkMode: $isDarkMode, temperatureUnit: $temperatureUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.temperatureUnit, temperatureUnit) ||
                other.temperatureUnit == temperatureUnit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode, temperatureUnit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState extends AppState {
  factory _AppState(
      {final bool isDarkMode,
      final TemperatureUnit temperatureUnit}) = _$AppStateImpl;
  _AppState._() : super._();

  @override
  bool get isDarkMode;
  @override
  TemperatureUnit get temperatureUnit;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
