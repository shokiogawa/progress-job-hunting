// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_company_page_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddCompanyPageStateTearOff {
  const _$AddCompanyPageStateTearOff();

// ignore: unused_element
  _AddCompanyPageState call(
      {String companyState = "",
      String companyName = "",
      String companyEx = ""}) {
    return _AddCompanyPageState(
      companyState: companyState,
      companyName: companyName,
      companyEx: companyEx,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddCompanyPageState = _$AddCompanyPageStateTearOff();

/// @nodoc
mixin _$AddCompanyPageState {
  String get companyState;
  String get companyName;
  String get companyEx;

  $AddCompanyPageStateCopyWith<AddCompanyPageState> get copyWith;
}

/// @nodoc
abstract class $AddCompanyPageStateCopyWith<$Res> {
  factory $AddCompanyPageStateCopyWith(
          AddCompanyPageState value, $Res Function(AddCompanyPageState) then) =
      _$AddCompanyPageStateCopyWithImpl<$Res>;
  $Res call({String companyState, String companyName, String companyEx});
}

/// @nodoc
class _$AddCompanyPageStateCopyWithImpl<$Res>
    implements $AddCompanyPageStateCopyWith<$Res> {
  _$AddCompanyPageStateCopyWithImpl(this._value, this._then);

  final AddCompanyPageState _value;
  // ignore: unused_field
  final $Res Function(AddCompanyPageState) _then;

  @override
  $Res call({
    Object companyState = freezed,
    Object companyName = freezed,
    Object companyEx = freezed,
  }) {
    return _then(_value.copyWith(
      companyState: companyState == freezed
          ? _value.companyState
          : companyState as String,
      companyName:
          companyName == freezed ? _value.companyName : companyName as String,
      companyEx: companyEx == freezed ? _value.companyEx : companyEx as String,
    ));
  }
}

/// @nodoc
abstract class _$AddCompanyPageStateCopyWith<$Res>
    implements $AddCompanyPageStateCopyWith<$Res> {
  factory _$AddCompanyPageStateCopyWith(_AddCompanyPageState value,
          $Res Function(_AddCompanyPageState) then) =
      __$AddCompanyPageStateCopyWithImpl<$Res>;
  @override
  $Res call({String companyState, String companyName, String companyEx});
}

/// @nodoc
class __$AddCompanyPageStateCopyWithImpl<$Res>
    extends _$AddCompanyPageStateCopyWithImpl<$Res>
    implements _$AddCompanyPageStateCopyWith<$Res> {
  __$AddCompanyPageStateCopyWithImpl(
      _AddCompanyPageState _value, $Res Function(_AddCompanyPageState) _then)
      : super(_value, (v) => _then(v as _AddCompanyPageState));

  @override
  _AddCompanyPageState get _value => super._value as _AddCompanyPageState;

  @override
  $Res call({
    Object companyState = freezed,
    Object companyName = freezed,
    Object companyEx = freezed,
  }) {
    return _then(_AddCompanyPageState(
      companyState: companyState == freezed
          ? _value.companyState
          : companyState as String,
      companyName:
          companyName == freezed ? _value.companyName : companyName as String,
      companyEx: companyEx == freezed ? _value.companyEx : companyEx as String,
    ));
  }
}

/// @nodoc
class _$_AddCompanyPageState implements _AddCompanyPageState {
  _$_AddCompanyPageState(
      {this.companyState = "", this.companyName = "", this.companyEx = ""})
      : assert(companyState != null),
        assert(companyName != null),
        assert(companyEx != null);

  @JsonKey(defaultValue: "")
  @override
  final String companyState;
  @JsonKey(defaultValue: "")
  @override
  final String companyName;
  @JsonKey(defaultValue: "")
  @override
  final String companyEx;

  @override
  String toString() {
    return 'AddCompanyPageState(companyState: $companyState, companyName: $companyName, companyEx: $companyEx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCompanyPageState &&
            (identical(other.companyState, companyState) ||
                const DeepCollectionEquality()
                    .equals(other.companyState, companyState)) &&
            (identical(other.companyName, companyName) ||
                const DeepCollectionEquality()
                    .equals(other.companyName, companyName)) &&
            (identical(other.companyEx, companyEx) ||
                const DeepCollectionEquality()
                    .equals(other.companyEx, companyEx)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(companyState) ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(companyEx);

  @override
  _$AddCompanyPageStateCopyWith<_AddCompanyPageState> get copyWith =>
      __$AddCompanyPageStateCopyWithImpl<_AddCompanyPageState>(
          this, _$identity);
}

abstract class _AddCompanyPageState implements AddCompanyPageState {
  factory _AddCompanyPageState(
      {String companyState,
      String companyName,
      String companyEx}) = _$_AddCompanyPageState;

  @override
  String get companyState;
  @override
  String get companyName;
  @override
  String get companyEx;
  @override
  _$AddCompanyPageStateCopyWith<_AddCompanyPageState> get copyWith;
}