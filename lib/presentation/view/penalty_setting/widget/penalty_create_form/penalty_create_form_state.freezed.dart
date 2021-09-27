// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'penalty_create_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PenaltyCreateFormStateTearOff {
  const _$PenaltyCreateFormStateTearOff();

  _PenaltyCreateFormState call({bool isEnabled = false}) {
    return _PenaltyCreateFormState(
      isEnabled: isEnabled,
    );
  }
}

/// @nodoc
const $PenaltyCreateFormState = _$PenaltyCreateFormStateTearOff();

/// @nodoc
mixin _$PenaltyCreateFormState {
  bool get isEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PenaltyCreateFormStateCopyWith<PenaltyCreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PenaltyCreateFormStateCopyWith<$Res> {
  factory $PenaltyCreateFormStateCopyWith(PenaltyCreateFormState value,
          $Res Function(PenaltyCreateFormState) then) =
      _$PenaltyCreateFormStateCopyWithImpl<$Res>;
  $Res call({bool isEnabled});
}

/// @nodoc
class _$PenaltyCreateFormStateCopyWithImpl<$Res>
    implements $PenaltyCreateFormStateCopyWith<$Res> {
  _$PenaltyCreateFormStateCopyWithImpl(this._value, this._then);

  final PenaltyCreateFormState _value;
  // ignore: unused_field
  final $Res Function(PenaltyCreateFormState) _then;

  @override
  $Res call({
    Object? isEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PenaltyCreateFormStateCopyWith<$Res>
    implements $PenaltyCreateFormStateCopyWith<$Res> {
  factory _$PenaltyCreateFormStateCopyWith(_PenaltyCreateFormState value,
          $Res Function(_PenaltyCreateFormState) then) =
      __$PenaltyCreateFormStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isEnabled});
}

/// @nodoc
class __$PenaltyCreateFormStateCopyWithImpl<$Res>
    extends _$PenaltyCreateFormStateCopyWithImpl<$Res>
    implements _$PenaltyCreateFormStateCopyWith<$Res> {
  __$PenaltyCreateFormStateCopyWithImpl(_PenaltyCreateFormState _value,
      $Res Function(_PenaltyCreateFormState) _then)
      : super(_value, (v) => _then(v as _PenaltyCreateFormState));

  @override
  _PenaltyCreateFormState get _value => super._value as _PenaltyCreateFormState;

  @override
  $Res call({
    Object? isEnabled = freezed,
  }) {
    return _then(_PenaltyCreateFormState(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PenaltyCreateFormState implements _PenaltyCreateFormState {
  const _$_PenaltyCreateFormState({this.isEnabled = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'PenaltyCreateFormState(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PenaltyCreateFormState &&
            (identical(other.isEnabled, isEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isEnabled, isEnabled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isEnabled);

  @JsonKey(ignore: true)
  @override
  _$PenaltyCreateFormStateCopyWith<_PenaltyCreateFormState> get copyWith =>
      __$PenaltyCreateFormStateCopyWithImpl<_PenaltyCreateFormState>(
          this, _$identity);
}

abstract class _PenaltyCreateFormState implements PenaltyCreateFormState {
  const factory _PenaltyCreateFormState({bool isEnabled}) =
      _$_PenaltyCreateFormState;

  @override
  bool get isEnabled => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PenaltyCreateFormStateCopyWith<_PenaltyCreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
