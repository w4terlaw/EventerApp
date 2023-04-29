// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) userLogin,
    required TResult Function() userRegistration,
    required TResult Function() userCheckAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLogin,
    TResult? Function()? userRegistration,
    TResult? Function()? userCheckAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLogin,
    TResult Function()? userRegistration,
    TResult Function()? userCheckAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegistration value) userRegistration,
    required TResult Function(_UserCheckAuthorized value) userCheckAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegistration value)? userRegistration,
    TResult? Function(_UserCheckAuthorized value)? userCheckAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegistration value)? userRegistration,
    TResult Function(_UserCheckAuthorized value)? userCheckAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthEventCopyWith<$Res> {
  factory $UserAuthEventCopyWith(
          UserAuthEvent value, $Res Function(UserAuthEvent) then) =
      _$UserAuthEventCopyWithImpl<$Res, UserAuthEvent>;
}

/// @nodoc
class _$UserAuthEventCopyWithImpl<$Res, $Val extends UserAuthEvent>
    implements $UserAuthEventCopyWith<$Res> {
  _$UserAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserLoginCopyWith<$Res> {
  factory _$$_UserLoginCopyWith(
          _$_UserLogin value, $Res Function(_$_UserLogin) then) =
      __$$_UserLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_UserLoginCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$_UserLogin>
    implements _$$_UserLoginCopyWith<$Res> {
  __$$_UserLoginCopyWithImpl(
      _$_UserLogin _value, $Res Function(_$_UserLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_UserLogin(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserLogin implements _UserLogin {
  const _$_UserLogin({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserAuthEvent.userLogin(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLogin &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserLoginCopyWith<_$_UserLogin> get copyWith =>
      __$$_UserLoginCopyWithImpl<_$_UserLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) userLogin,
    required TResult Function() userRegistration,
    required TResult Function() userCheckAuthorized,
  }) {
    return userLogin(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLogin,
    TResult? Function()? userRegistration,
    TResult? Function()? userCheckAuthorized,
  }) {
    return userLogin?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLogin,
    TResult Function()? userRegistration,
    TResult Function()? userCheckAuthorized,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegistration value) userRegistration,
    required TResult Function(_UserCheckAuthorized value) userCheckAuthorized,
  }) {
    return userLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegistration value)? userRegistration,
    TResult? Function(_UserCheckAuthorized value)? userCheckAuthorized,
  }) {
    return userLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegistration value)? userRegistration,
    TResult Function(_UserCheckAuthorized value)? userCheckAuthorized,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin(this);
    }
    return orElse();
  }
}

abstract class _UserLogin implements UserAuthEvent {
  const factory _UserLogin(
      {required final String email,
      required final String password}) = _$_UserLogin;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_UserLoginCopyWith<_$_UserLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserRegistrationCopyWith<$Res> {
  factory _$$_UserRegistrationCopyWith(
          _$_UserRegistration value, $Res Function(_$_UserRegistration) then) =
      __$$_UserRegistrationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserRegistrationCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$_UserRegistration>
    implements _$$_UserRegistrationCopyWith<$Res> {
  __$$_UserRegistrationCopyWithImpl(
      _$_UserRegistration _value, $Res Function(_$_UserRegistration) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserRegistration implements _UserRegistration {
  const _$_UserRegistration();

  @override
  String toString() {
    return 'UserAuthEvent.userRegistration()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserRegistration);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) userLogin,
    required TResult Function() userRegistration,
    required TResult Function() userCheckAuthorized,
  }) {
    return userRegistration();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLogin,
    TResult? Function()? userRegistration,
    TResult? Function()? userCheckAuthorized,
  }) {
    return userRegistration?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLogin,
    TResult Function()? userRegistration,
    TResult Function()? userCheckAuthorized,
    required TResult orElse(),
  }) {
    if (userRegistration != null) {
      return userRegistration();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegistration value) userRegistration,
    required TResult Function(_UserCheckAuthorized value) userCheckAuthorized,
  }) {
    return userRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegistration value)? userRegistration,
    TResult? Function(_UserCheckAuthorized value)? userCheckAuthorized,
  }) {
    return userRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegistration value)? userRegistration,
    TResult Function(_UserCheckAuthorized value)? userCheckAuthorized,
    required TResult orElse(),
  }) {
    if (userRegistration != null) {
      return userRegistration(this);
    }
    return orElse();
  }
}

abstract class _UserRegistration implements UserAuthEvent {
  const factory _UserRegistration() = _$_UserRegistration;
}

/// @nodoc
abstract class _$$_UserCheckAuthorizedCopyWith<$Res> {
  factory _$$_UserCheckAuthorizedCopyWith(_$_UserCheckAuthorized value,
          $Res Function(_$_UserCheckAuthorized) then) =
      __$$_UserCheckAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserCheckAuthorizedCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$_UserCheckAuthorized>
    implements _$$_UserCheckAuthorizedCopyWith<$Res> {
  __$$_UserCheckAuthorizedCopyWithImpl(_$_UserCheckAuthorized _value,
      $Res Function(_$_UserCheckAuthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserCheckAuthorized implements _UserCheckAuthorized {
  const _$_UserCheckAuthorized();

  @override
  String toString() {
    return 'UserAuthEvent.userCheckAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserCheckAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) userLogin,
    required TResult Function() userRegistration,
    required TResult Function() userCheckAuthorized,
  }) {
    return userCheckAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLogin,
    TResult? Function()? userRegistration,
    TResult? Function()? userCheckAuthorized,
  }) {
    return userCheckAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLogin,
    TResult Function()? userRegistration,
    TResult Function()? userCheckAuthorized,
    required TResult orElse(),
  }) {
    if (userCheckAuthorized != null) {
      return userCheckAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegistration value) userRegistration,
    required TResult Function(_UserCheckAuthorized value) userCheckAuthorized,
  }) {
    return userCheckAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegistration value)? userRegistration,
    TResult? Function(_UserCheckAuthorized value)? userCheckAuthorized,
  }) {
    return userCheckAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegistration value)? userRegistration,
    TResult Function(_UserCheckAuthorized value)? userCheckAuthorized,
    required TResult orElse(),
  }) {
    if (userCheckAuthorized != null) {
      return userCheckAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UserCheckAuthorized implements UserAuthEvent {
  const factory _UserCheckAuthorized() = _$_UserCheckAuthorized;
}

/// @nodoc
mixin _$UserAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userLoading,
    required TResult Function() userLoginSuccess,
    required TResult Function() userLoginFailed,
    required TResult Function(String message) userError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userLoading,
    TResult? Function()? userLoginSuccess,
    TResult? Function()? userLoginFailed,
    TResult? Function(String message)? userError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userLoading,
    TResult Function()? userLoginSuccess,
    TResult Function()? userLoginFailed,
    TResult Function(String message)? userError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoading value) userLoading,
    required TResult Function(_UserLoginSuccess value) userLoginSuccess,
    required TResult Function(_UserLoginFailed value) userLoginFailed,
    required TResult Function(_UserError value) userError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoading value)? userLoading,
    TResult? Function(_UserLoginSuccess value)? userLoginSuccess,
    TResult? Function(_UserLoginFailed value)? userLoginFailed,
    TResult? Function(_UserError value)? userError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoading value)? userLoading,
    TResult Function(_UserLoginSuccess value)? userLoginSuccess,
    TResult Function(_UserLoginFailed value)? userLoginFailed,
    TResult Function(_UserError value)? userError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthStateCopyWith<$Res> {
  factory $UserAuthStateCopyWith(
          UserAuthState value, $Res Function(UserAuthState) then) =
      _$UserAuthStateCopyWithImpl<$Res, UserAuthState>;
}

/// @nodoc
class _$UserAuthStateCopyWithImpl<$Res, $Val extends UserAuthState>
    implements $UserAuthStateCopyWith<$Res> {
  _$UserAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserLoadingCopyWith<$Res> {
  factory _$$_UserLoadingCopyWith(
          _$_UserLoading value, $Res Function(_$_UserLoading) then) =
      __$$_UserLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserLoadingCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$_UserLoading>
    implements _$$_UserLoadingCopyWith<$Res> {
  __$$_UserLoadingCopyWithImpl(
      _$_UserLoading _value, $Res Function(_$_UserLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserLoading implements _UserLoading {
  const _$_UserLoading();

  @override
  String toString() {
    return 'UserAuthState.userLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userLoading,
    required TResult Function() userLoginSuccess,
    required TResult Function() userLoginFailed,
    required TResult Function(String message) userError,
  }) {
    return userLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userLoading,
    TResult? Function()? userLoginSuccess,
    TResult? Function()? userLoginFailed,
    TResult? Function(String message)? userError,
  }) {
    return userLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userLoading,
    TResult Function()? userLoginSuccess,
    TResult Function()? userLoginFailed,
    TResult Function(String message)? userError,
    required TResult orElse(),
  }) {
    if (userLoading != null) {
      return userLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoading value) userLoading,
    required TResult Function(_UserLoginSuccess value) userLoginSuccess,
    required TResult Function(_UserLoginFailed value) userLoginFailed,
    required TResult Function(_UserError value) userError,
  }) {
    return userLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoading value)? userLoading,
    TResult? Function(_UserLoginSuccess value)? userLoginSuccess,
    TResult? Function(_UserLoginFailed value)? userLoginFailed,
    TResult? Function(_UserError value)? userError,
  }) {
    return userLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoading value)? userLoading,
    TResult Function(_UserLoginSuccess value)? userLoginSuccess,
    TResult Function(_UserLoginFailed value)? userLoginFailed,
    TResult Function(_UserError value)? userError,
    required TResult orElse(),
  }) {
    if (userLoading != null) {
      return userLoading(this);
    }
    return orElse();
  }
}

abstract class _UserLoading implements UserAuthState {
  const factory _UserLoading() = _$_UserLoading;
}

/// @nodoc
abstract class _$$_UserLoginSuccessCopyWith<$Res> {
  factory _$$_UserLoginSuccessCopyWith(
          _$_UserLoginSuccess value, $Res Function(_$_UserLoginSuccess) then) =
      __$$_UserLoginSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserLoginSuccessCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$_UserLoginSuccess>
    implements _$$_UserLoginSuccessCopyWith<$Res> {
  __$$_UserLoginSuccessCopyWithImpl(
      _$_UserLoginSuccess _value, $Res Function(_$_UserLoginSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserLoginSuccess implements _UserLoginSuccess {
  const _$_UserLoginSuccess();

  @override
  String toString() {
    return 'UserAuthState.userLoginSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserLoginSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userLoading,
    required TResult Function() userLoginSuccess,
    required TResult Function() userLoginFailed,
    required TResult Function(String message) userError,
  }) {
    return userLoginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userLoading,
    TResult? Function()? userLoginSuccess,
    TResult? Function()? userLoginFailed,
    TResult? Function(String message)? userError,
  }) {
    return userLoginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userLoading,
    TResult Function()? userLoginSuccess,
    TResult Function()? userLoginFailed,
    TResult Function(String message)? userError,
    required TResult orElse(),
  }) {
    if (userLoginSuccess != null) {
      return userLoginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoading value) userLoading,
    required TResult Function(_UserLoginSuccess value) userLoginSuccess,
    required TResult Function(_UserLoginFailed value) userLoginFailed,
    required TResult Function(_UserError value) userError,
  }) {
    return userLoginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoading value)? userLoading,
    TResult? Function(_UserLoginSuccess value)? userLoginSuccess,
    TResult? Function(_UserLoginFailed value)? userLoginFailed,
    TResult? Function(_UserError value)? userError,
  }) {
    return userLoginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoading value)? userLoading,
    TResult Function(_UserLoginSuccess value)? userLoginSuccess,
    TResult Function(_UserLoginFailed value)? userLoginFailed,
    TResult Function(_UserError value)? userError,
    required TResult orElse(),
  }) {
    if (userLoginSuccess != null) {
      return userLoginSuccess(this);
    }
    return orElse();
  }
}

abstract class _UserLoginSuccess implements UserAuthState {
  const factory _UserLoginSuccess() = _$_UserLoginSuccess;
}

/// @nodoc
abstract class _$$_UserLoginFailedCopyWith<$Res> {
  factory _$$_UserLoginFailedCopyWith(
          _$_UserLoginFailed value, $Res Function(_$_UserLoginFailed) then) =
      __$$_UserLoginFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserLoginFailedCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$_UserLoginFailed>
    implements _$$_UserLoginFailedCopyWith<$Res> {
  __$$_UserLoginFailedCopyWithImpl(
      _$_UserLoginFailed _value, $Res Function(_$_UserLoginFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserLoginFailed implements _UserLoginFailed {
  const _$_UserLoginFailed();

  @override
  String toString() {
    return 'UserAuthState.userLoginFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserLoginFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userLoading,
    required TResult Function() userLoginSuccess,
    required TResult Function() userLoginFailed,
    required TResult Function(String message) userError,
  }) {
    return userLoginFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userLoading,
    TResult? Function()? userLoginSuccess,
    TResult? Function()? userLoginFailed,
    TResult? Function(String message)? userError,
  }) {
    return userLoginFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userLoading,
    TResult Function()? userLoginSuccess,
    TResult Function()? userLoginFailed,
    TResult Function(String message)? userError,
    required TResult orElse(),
  }) {
    if (userLoginFailed != null) {
      return userLoginFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoading value) userLoading,
    required TResult Function(_UserLoginSuccess value) userLoginSuccess,
    required TResult Function(_UserLoginFailed value) userLoginFailed,
    required TResult Function(_UserError value) userError,
  }) {
    return userLoginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoading value)? userLoading,
    TResult? Function(_UserLoginSuccess value)? userLoginSuccess,
    TResult? Function(_UserLoginFailed value)? userLoginFailed,
    TResult? Function(_UserError value)? userError,
  }) {
    return userLoginFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoading value)? userLoading,
    TResult Function(_UserLoginSuccess value)? userLoginSuccess,
    TResult Function(_UserLoginFailed value)? userLoginFailed,
    TResult Function(_UserError value)? userError,
    required TResult orElse(),
  }) {
    if (userLoginFailed != null) {
      return userLoginFailed(this);
    }
    return orElse();
  }
}

abstract class _UserLoginFailed implements UserAuthState {
  const factory _UserLoginFailed() = _$_UserLoginFailed;
}

/// @nodoc
abstract class _$$_UserErrorCopyWith<$Res> {
  factory _$$_UserErrorCopyWith(
          _$_UserError value, $Res Function(_$_UserError) then) =
      __$$_UserErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UserErrorCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$_UserError>
    implements _$$_UserErrorCopyWith<$Res> {
  __$$_UserErrorCopyWithImpl(
      _$_UserError _value, $Res Function(_$_UserError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UserError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserError implements _UserError {
  const _$_UserError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UserAuthState.userError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserErrorCopyWith<_$_UserError> get copyWith =>
      __$$_UserErrorCopyWithImpl<_$_UserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userLoading,
    required TResult Function() userLoginSuccess,
    required TResult Function() userLoginFailed,
    required TResult Function(String message) userError,
  }) {
    return userError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userLoading,
    TResult? Function()? userLoginSuccess,
    TResult? Function()? userLoginFailed,
    TResult? Function(String message)? userError,
  }) {
    return userError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userLoading,
    TResult Function()? userLoginSuccess,
    TResult Function()? userLoginFailed,
    TResult Function(String message)? userError,
    required TResult orElse(),
  }) {
    if (userError != null) {
      return userError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoading value) userLoading,
    required TResult Function(_UserLoginSuccess value) userLoginSuccess,
    required TResult Function(_UserLoginFailed value) userLoginFailed,
    required TResult Function(_UserError value) userError,
  }) {
    return userError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoading value)? userLoading,
    TResult? Function(_UserLoginSuccess value)? userLoginSuccess,
    TResult? Function(_UserLoginFailed value)? userLoginFailed,
    TResult? Function(_UserError value)? userError,
  }) {
    return userError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoading value)? userLoading,
    TResult Function(_UserLoginSuccess value)? userLoginSuccess,
    TResult Function(_UserLoginFailed value)? userLoginFailed,
    TResult Function(_UserError value)? userError,
    required TResult orElse(),
  }) {
    if (userError != null) {
      return userError(this);
    }
    return orElse();
  }
}

abstract class _UserError implements UserAuthState {
  const factory _UserError({required final String message}) = _$_UserError;

  String get message;
  @JsonKey(ignore: true)
  _$$_UserErrorCopyWith<_$_UserError> get copyWith =>
      throw _privateConstructorUsedError;
}
