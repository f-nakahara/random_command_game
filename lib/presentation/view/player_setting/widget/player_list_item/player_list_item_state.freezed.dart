// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_list_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerListItemStateTearOff {
  const _$PlayerListItemStateTearOff();

  _PlayerListItemState _(
      {required String id, required String name, required bool isSelected}) {
    return _PlayerListItemState(
      id: id,
      name: name,
      isSelected: isSelected,
    );
  }
}

/// @nodoc
const $PlayerListItemState = _$PlayerListItemStateTearOff();

/// @nodoc
mixin _$PlayerListItemState {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerListItemStateCopyWith<PlayerListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerListItemStateCopyWith<$Res> {
  factory $PlayerListItemStateCopyWith(
          PlayerListItemState value, $Res Function(PlayerListItemState) then) =
      _$PlayerListItemStateCopyWithImpl<$Res>;
  $Res call({String id, String name, bool isSelected});
}

/// @nodoc
class _$PlayerListItemStateCopyWithImpl<$Res>
    implements $PlayerListItemStateCopyWith<$Res> {
  _$PlayerListItemStateCopyWithImpl(this._value, this._then);

  final PlayerListItemState _value;
  // ignore: unused_field
  final $Res Function(PlayerListItemState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PlayerListItemStateCopyWith<$Res>
    implements $PlayerListItemStateCopyWith<$Res> {
  factory _$PlayerListItemStateCopyWith(_PlayerListItemState value,
          $Res Function(_PlayerListItemState) then) =
      __$PlayerListItemStateCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, bool isSelected});
}

/// @nodoc
class __$PlayerListItemStateCopyWithImpl<$Res>
    extends _$PlayerListItemStateCopyWithImpl<$Res>
    implements _$PlayerListItemStateCopyWith<$Res> {
  __$PlayerListItemStateCopyWithImpl(
      _PlayerListItemState _value, $Res Function(_PlayerListItemState) _then)
      : super(_value, (v) => _then(v as _PlayerListItemState));

  @override
  _PlayerListItemState get _value => super._value as _PlayerListItemState;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_PlayerListItemState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PlayerListItemState implements _PlayerListItemState {
  const _$_PlayerListItemState(
      {required this.id, required this.name, required this.isSelected});

  @override
  final String id;
  @override
  final String name;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'PlayerListItemState._(id: $id, name: $name, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerListItemState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isSelected);

  @JsonKey(ignore: true)
  @override
  _$PlayerListItemStateCopyWith<_PlayerListItemState> get copyWith =>
      __$PlayerListItemStateCopyWithImpl<_PlayerListItemState>(
          this, _$identity);
}

abstract class _PlayerListItemState implements PlayerListItemState {
  const factory _PlayerListItemState(
      {required String id,
      required String name,
      required bool isSelected}) = _$_PlayerListItemState;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool get isSelected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerListItemStateCopyWith<_PlayerListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
