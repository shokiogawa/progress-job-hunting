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
      {CompanyStatus companyStatus,
      String companyState = "",
      String companyName = "",
      String companyEx = "",
      bool isLoading = false}) {
    return _AddCompanyPageState(
      companyStatus: companyStatus,
      companyState: companyState,
      companyName: companyName,
      companyEx: companyEx,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddCompanyPageState = _$AddCompanyPageStateTearOff();

/// @nodoc
mixin _$AddCompanyPageState {
  CompanyStatus get companyStatus;
  String get companyState;
  String get companyName;
  String get companyEx;
  bool get isLoading;

  $AddCompanyPageStateCopyWith<AddCompanyPageState> get copyWith;
}

/// @nodoc
abstract class $AddCompanyPageStateCopyWith<$Res> {
  factory $AddCompanyPageStateCopyWith(
          AddCompanyPageState value, $Res Function(AddCompanyPageState) then) =
      _$AddCompanyPageStateCopyWithImpl<$Res>;
  $Res call(
      {CompanyStatus companyStatus,
      String companyState,
      String companyName,
      String companyEx,
      bool isLoading});
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
    Object companyStatus = freezed,
    Object companyState = freezed,
    Object companyName = freezed,
    Object companyEx = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      companyStatus: companyStatus == freezed
          ? _value.companyStatus
          : companyStatus as CompanyStatus,
      companyState: companyState == freezed
          ? _value.companyState
          : companyState as String,
      companyName:
          companyName == freezed ? _value.companyName : companyName as String,
      companyEx: companyEx == freezed ? _value.companyEx : companyEx as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
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
  $Res call(
      {CompanyStatus companyStatus,
      String companyState,
      String companyName,
      String companyEx,
      bool isLoading});
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
    Object companyStatus = freezed,
    Object companyState = freezed,
    Object companyName = freezed,
    Object companyEx = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_AddCompanyPageState(
      companyStatus: companyStatus == freezed
          ? _value.companyStatus
          : companyStatus as CompanyStatus,
      companyState: companyState == freezed
          ? _value.companyState
          : companyState as String,
      companyName:
          companyName == freezed ? _value.companyName : companyName as String,
      companyEx: companyEx == freezed ? _value.companyEx : companyEx as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_AddCompanyPageState implements _AddCompanyPageState {
  _$_AddCompanyPageState(
      {this.companyStatus,
      this.companyState = "",
      this.companyName = "",
      this.companyEx = "",
      this.isLoading = false})
      : assert(companyState != null),
        assert(companyName != null),
        assert(companyEx != null),
        assert(isLoading != null);

  @override
  final CompanyStatus companyStatus;
  @JsonKey(defaultValue: "")
  @override
  final String companyState;
  @JsonKey(defaultValue: "")
  @override
  final String companyName;
  @JsonKey(defaultValue: "")
  @override
  final String companyEx;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AddCompanyPageState(companyStatus: $companyStatus, companyState: $companyState, companyName: $companyName, companyEx: $companyEx, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCompanyPageState &&
            (identical(other.companyStatus, companyStatus) ||
                const DeepCollectionEquality()
                    .equals(other.companyStatus, companyStatus)) &&
            (identical(other.companyState, companyState) ||
                const DeepCollectionEquality()
                    .equals(other.companyState, companyState)) &&
            (identical(other.companyName, companyName) ||
                const DeepCollectionEquality()
                    .equals(other.companyName, companyName)) &&
            (identical(other.companyEx, companyEx) ||
                const DeepCollectionEquality()
                    .equals(other.companyEx, companyEx)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(companyStatus) ^
      const DeepCollectionEquality().hash(companyState) ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(companyEx) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$AddCompanyPageStateCopyWith<_AddCompanyPageState> get copyWith =>
      __$AddCompanyPageStateCopyWithImpl<_AddCompanyPageState>(
          this, _$identity);
}

abstract class _AddCompanyPageState implements AddCompanyPageState {
  factory _AddCompanyPageState(
      {CompanyStatus companyStatus,
      String companyState,
      String companyName,
      String companyEx,
      bool isLoading}) = _$_AddCompanyPageState;

  @override
  CompanyStatus get companyStatus;
  @override
  String get companyState;
  @override
  String get companyName;
  @override
  String get companyEx;
  @override
  bool get isLoading;
  @override
  _$AddCompanyPageStateCopyWith<_AddCompanyPageState> get copyWith;
}
