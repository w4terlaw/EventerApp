// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserLoginEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) userLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLogin value) userLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLogin value)? userLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLogin value)? userLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserLoginEventCopyWith<UserLoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginEventCopyWith<$Res> {
  factory $UserLoginEventCopyWith(
          UserLoginEvent value, $Res Function(UserLoginEvent) then) =
      _$UserLoginEventCopyWithImpl<$Res, UserLoginEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$UserLoginEventCopyWithImpl<$Res, $Val extends UserLoginEvent>
    implements $UserLoginEventCopyWith<$Res> {
  _$UserLoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLoginImplCopyWith<$Res>
    implements $UserLoginEventCopyWith<$Res> {
  factory _$$UserLoginImplCopyWith(
          _$UserLoginImpl value, $Res Function(_$UserLoginImpl) then) =
      __$$UserLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserLoginImplCopyWithImpl<$Res>
    extends _$UserLoginEventCopyWithImpl<$Res, _$UserLoginImpl>
    implements _$$UserLoginImplCopyWith<$Res> {
  __$$UserLoginImplCopyWithImpl(
      _$UserLoginImpl _value, $Res Function(_$UserLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserLoginImpl(
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

class _$UserLoginImpl implements _UserLogin {
  const _$UserLoginImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserLoginEvent.userLogin(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginImplCopyWith<_$UserLoginImpl> get copyWith =>
      __$$UserLoginImplCopyWithImpl<_$UserLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) userLogin,
  }) {
    return userLogin(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? userLogin,
  }) {
    return userLogin?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? userLogin,
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
  }) {
    return userLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLogin value)? userLogin,
  }) {
    return userLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLogin value)? userLogin,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin(this);
    }
    return orElse();
  }
}

abstract class _UserLogin implements UserLoginEvent {
  const factory _UserLogin(
      {required final String email,
      required final String password}) = _$UserLoginImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserLoginImplCopyWith<_$UserLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserLoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginInitial value) initial,
    required TResult Function(UserLoginLoading value) loading,
    required TResult Function(UserLoginSuccess value) success,
    required TResult Function(UserLoginError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginInitial value)? initial,
    TResult? Function(UserLoginLoading value)? loading,
    TResult? Function(UserLoginSuccess value)? success,
    TResult? Function(UserLoginError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginInitial value)? initial,
    TResult Function(UserLoginLoading value)? loading,
    TResult Function(UserLoginSuccess value)? success,
    TResult Function(UserLoginError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginStateCopyWith<$Res> {
  factory $UserLoginStateCopyWith(
          UserLoginState value, $Res Function(UserLoginState) then) =
      _$UserLoginStateCopyWithImpl<$Res, UserLoginState>;
}

/// @nodoc
class _$UserLoginStateCopyWithImpl<$Res, $Val extends UserLoginState>
    implements $UserLoginStateCopyWith<$Res> {
  _$UserLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserLoginInitialImplCopyWith<$Res> {
  factory _$$UserLoginInitialImplCopyWith(_$UserLoginInitialImpl value,
          $Res Function(_$UserLoginInitialImpl) then) =
      __$$UserLoginInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoginInitialImplCopyWithImpl<$Res>
    extends _$UserLoginStateCopyWithImpl<$Res, _$UserLoginInitialImpl>
    implements _$$UserLoginInitialImplCopyWith<$Res> {
  __$$UserLoginInitialImplCopyWithImpl(_$UserLoginInitialImpl _value,
      $Res Function(_$UserLoginInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserLoginInitialImpl implements UserLoginInitial {
  const _$UserLoginInitialImpl();

  @override
  String toString() {
    return 'UserLoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoginInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginInitial value) initial,
    required TResult Function(UserLoginLoading value) loading,
    required TResult Function(UserLoginSuccess value) success,
    required TResult Function(UserLoginError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginInitial value)? initial,
    TResult? Function(UserLoginLoading value)? loading,
    TResult? Function(UserLoginSuccess value)? success,
    TResult? Function(UserLoginError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginInitial value)? initial,
    TResult Function(UserLoginLoading value)? loading,
    TResult Function(UserLoginSuccess value)? success,
    TResult Function(UserLoginError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserLoginInitial implements UserLoginState {
  const factory UserLoginInitial() = _$UserLoginInitialImpl;
}

/// @nodoc
abstract class _$$UserLoginLoadingImplCopyWith<$Res> {
  factory _$$UserLoginLoadingImplCopyWith(_$UserLoginLoadingImpl value,
          $Res Function(_$UserLoginLoadingImpl) then) =
      __$$UserLoginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoginLoadingImplCopyWithImpl<$Res>
    extends _$UserLoginStateCopyWithImpl<$Res, _$UserLoginLoadingImpl>
    implements _$$UserLoginLoadingImplCopyWith<$Res> {
  __$$UserLoginLoadingImplCopyWithImpl(_$UserLoginLoadingImpl _value,
      $Res Function(_$UserLoginLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserLoginLoadingImpl implements UserLoginLoading {
  const _$UserLoginLoadingImpl();

  @override
  String toString() {
    return 'UserLoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoginLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginInitial value) initial,
    required TResult Function(UserLoginLoading value) loading,
    required TResult Function(UserLoginSuccess value) success,
    required TResult Function(UserLoginError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginInitial value)? initial,
    TResult? Function(UserLoginLoading value)? loading,
    TResult? Function(UserLoginSuccess value)? success,
    TResult? Function(UserLoginError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginInitial value)? initial,
    TResult Function(UserLoginLoading value)? loading,
    TResult Function(UserLoginSuccess value)? success,
    TResult Function(UserLoginError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserLoginLoading implements UserLoginState {
  const factory UserLoginLoading() = _$UserLoginLoadingImpl;
}

/// @nodoc
abstract class _$$UserLoginSuccessImplCopyWith<$Res> {
  factory _$$UserLoginSuccessImplCopyWith(_$UserLoginSuccessImpl value,
          $Res Function(_$UserLoginSuccessImpl) then) =
      __$$UserLoginSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoginSuccessImplCopyWithImpl<$Res>
    extends _$UserLoginStateCopyWithImpl<$Res, _$UserLoginSuccessImpl>
    implements _$$UserLoginSuccessImplCopyWith<$Res> {
  __$$UserLoginSuccessImplCopyWithImpl(_$UserLoginSuccessImpl _value,
      $Res Function(_$UserLoginSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserLoginSuccessImpl implements UserLoginSuccess {
  const _$UserLoginSuccessImpl();

  @override
  String toString() {
    return 'UserLoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoginSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginInitial value) initial,
    required TResult Function(UserLoginLoading value) loading,
    required TResult Function(UserLoginSuccess value) success,
    required TResult Function(UserLoginError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginInitial value)? initial,
    TResult? Function(UserLoginLoading value)? loading,
    TResult? Function(UserLoginSuccess value)? success,
    TResult? Function(UserLoginError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginInitial value)? initial,
    TResult Function(UserLoginLoading value)? loading,
    TResult Function(UserLoginSuccess value)? success,
    TResult Function(UserLoginError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserLoginSuccess implements UserLoginState {
  const factory UserLoginSuccess() = _$UserLoginSuccessImpl;
}

/// @nodoc
abstract class _$$UserLoginErrorImplCopyWith<$Res> {
  factory _$$UserLoginErrorImplCopyWith(_$UserLoginErrorImpl value,
          $Res Function(_$UserLoginErrorImpl) then) =
      __$$UserLoginErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UserLoginErrorImplCopyWithImpl<$Res>
    extends _$UserLoginStateCopyWithImpl<$Res, _$UserLoginErrorImpl>
    implements _$$UserLoginErrorImplCopyWith<$Res> {
  __$$UserLoginErrorImplCopyWithImpl(
      _$UserLoginErrorImpl _value, $Res Function(_$UserLoginErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UserLoginErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLoginErrorImpl implements UserLoginError {
  const _$UserLoginErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UserLoginState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginErrorImplCopyWith<_$UserLoginErrorImpl> get copyWith =>
      __$$UserLoginErrorImplCopyWithImpl<_$UserLoginErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginInitial value) initial,
    required TResult Function(UserLoginLoading value) loading,
    required TResult Function(UserLoginSuccess value) success,
    required TResult Function(UserLoginError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginInitial value)? initial,
    TResult? Function(UserLoginLoading value)? loading,
    TResult? Function(UserLoginSuccess value)? success,
    TResult? Function(UserLoginError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginInitial value)? initial,
    TResult Function(UserLoginLoading value)? loading,
    TResult Function(UserLoginSuccess value)? success,
    TResult Function(UserLoginError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserLoginError implements UserLoginState {
  const factory UserLoginError({required final String message}) =
      _$UserLoginErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$UserLoginErrorImplCopyWith<_$UserLoginErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
