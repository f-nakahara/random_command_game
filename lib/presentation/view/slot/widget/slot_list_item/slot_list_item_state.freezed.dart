// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slot_list_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SlotListItemStateTearOff {
  const _$SlotListItemStateTearOff();

  _SlotListItemsState call(
      {bool isStopped = false,
      required SlotListItemType type,
      required String value}) {
    return _SlotListItemsState(
      isStopped: isStopped,
      type: type,
      value: value,
    );
  }
}

/// @nodoc
const $SlotListItemState = _$SlotListItemStateTearOff();

/// @nodoc
mixin _$SlotListItemState {
  bool get isStopped => throw _privateConstructorUsedError;
  SlotListItemType get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlotListItemStateCopyWith<SlotListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotListItemStateCopyWith<$Res> {
  factory $SlotListItemStateCopyWith(
          SlotListItemState value, $Res Function(SlotListItemState) then) =
      _$SlotListItemStateCopyWithImpl<$Res>;
  $Res call({bool isStopped, SlotListItemType type, String value});
}

/// @nodoc
class _$SlotListItemStateCopyWithImpl<$Res>
    implements $SlotListItemStateCopyWith<$Res> {
  _$SlotListItemStateCopyWithImpl(this._value, this._then);

  final SlotListItemState _value;
  // ignore: unused_field
  final $Res Function(SlotListItemState) _then;

  @override
  $Res call({
    Object? isStopped = freezed,
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      isStopped: isStopped == freezed
          ? _value.isStopped
          : isStopped // ignore: cast_nullable_to_non_nullable
              as bool,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlotListItemType,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SlotListItemsStateCopyWith<$Res>
    implements $SlotListItemStateCopyWith<$Res> {
  factory _$SlotListItemsStateCopyWith(
          _SlotListItemsState value, $Res Function(_SlotListItemsState) then) =
      __$SlotListItemsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isStopped, SlotListItemType type, String value});
}

/// @nodoc
class __$SlotListItemsStateCopyWithImpl<$Res>
    extends _$SlotListItemStateCopyWithImpl<$Res>
    implements _$SlotListItemsStateCopyWith<$Res> {
  __$SlotListItemsStateCopyWithImpl(
      _SlotListItemsState _value, $Res Function(_SlotListItemsState) _then)
      : super(_value, (v) => _then(v as _SlotListItemsState));

  @override
  _SlotListItemsState get _value => super._value as _SlotListItemsState;

  @override
  $Res call({
    Object? isStopped = freezed,
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_SlotListItemsState(
      isStopped: isStopped == freezed
          ? _value.isStopped
          : isStopped // ignore: cast_nullable_to_non_nullable
              as bool,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlotListItemType,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SlotListItemsState implements _SlotListItemsState {
  const _$_SlotListItemsState(
      {this.isStopped = false, required this.type, required this.value});

  @JsonKey(defaultValue: false)
  @override
  final bool isStopped;
  @override
  final SlotListItemType type;
  @override
  final String value;

  @override
  String toString() {
    return 'SlotListItemState(isStopped: $isStopped, type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SlotListItemsState &&
            (identical(other.isStopped, isStopped) ||
                const DeepCollectionEquality()
                    .equals(other.isStopped, isStopped)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isStopped) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$SlotListItemsStateCopyWith<_SlotListItemsState> get copyWith =>
      __$SlotListItemsStateCopyWithImpl<_SlotListItemsState>(this, _$identity);
}

abstract class _SlotListItemsState implements SlotListItemState {
  const factory _SlotListItemsState(
      {bool isStopped,
      required SlotListItemType type,
      required String value}) = _$_SlotListItemsState;

  @override
  bool get isStopped => throw _privateConstructorUsedError;
  @override
  SlotListItemType get type => throw _privateConstructorUsedError;
  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SlotListItemsStateCopyWith<_SlotListItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}
