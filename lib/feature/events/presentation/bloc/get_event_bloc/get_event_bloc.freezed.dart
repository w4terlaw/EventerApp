// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetEventEvent {
  int get eventId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int eventId) byId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int eventId)? byId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int eventId)? byId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEventById value) byId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEventById value)? byId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEventById value)? byId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetEventEventCopyWith<GetEventEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEventEventCopyWith<$Res> {
  factory $GetEventEventCopyWith(
          GetEventEvent value, $Res Function(GetEventEvent) then) =
      _$GetEventEventCopyWithImpl<$Res, GetEventEvent>;
  @useResult
  $Res call({int eventId});
}

/// @nodoc
class _$GetEventEventCopyWithImpl<$Res, $Val extends GetEventEvent>
    implements $GetEventEventCopyWith<$Res> {
  _$GetEventEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetEventByIdCopyWith<$Res>
    implements $GetEventEventCopyWith<$Res> {
  factory _$$_GetEventByIdCopyWith(
          _$_GetEventById value, $Res Function(_$_GetEventById) then) =
      __$$_GetEventByIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int eventId});
}

/// @nodoc
class __$$_GetEventByIdCopyWithImpl<$Res>
    extends _$GetEventEventCopyWithImpl<$Res, _$_GetEventById>
    implements _$$_GetEventByIdCopyWith<$Res> {
  __$$_GetEventByIdCopyWithImpl(
      _$_GetEventById _value, $Res Function(_$_GetEventById) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$_GetEventById(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetEventById implements _GetEventById {
  const _$_GetEventById({required this.eventId});

  @override
  final int eventId;

  @override
  String toString() {
    return 'GetEventEvent.byId(eventId: $eventId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetEventById &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetEventByIdCopyWith<_$_GetEventById> get copyWith =>
      __$$_GetEventByIdCopyWithImpl<_$_GetEventById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int eventId) byId,
  }) {
    return byId(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int eventId)? byId,
  }) {
    return byId?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int eventId)? byId,
    required TResult orElse(),
  }) {
    if (byId != null) {
      return byId(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEventById value) byId,
  }) {
    return byId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEventById value)? byId,
  }) {
    return byId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEventById value)? byId,
    required TResult orElse(),
  }) {
    if (byId != null) {
      return byId(this);
    }
    return orElse();
  }
}

abstract class _GetEventById implements GetEventEvent {
  const factory _GetEventById({required final int eventId}) = _$_GetEventById;

  @override
  int get eventId;
  @override
  @JsonKey(ignore: true)
  _$$_GetEventByIdCopyWith<_$_GetEventById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetEventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Event event) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Event event)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEventLoading value) loading,
    required TResult Function(GetEventLoaded value) loaded,
    required TResult Function(GetEventError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEventLoading value)? loading,
    TResult? Function(GetEventLoaded value)? loaded,
    TResult? Function(GetEventError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEventLoading value)? loading,
    TResult Function(GetEventLoaded value)? loaded,
    TResult Function(GetEventError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEventStateCopyWith<$Res> {
  factory $GetEventStateCopyWith(
          GetEventState value, $Res Function(GetEventState) then) =
      _$GetEventStateCopyWithImpl<$Res, GetEventState>;
}

/// @nodoc
class _$GetEventStateCopyWithImpl<$Res, $Val extends GetEventState>
    implements $GetEventStateCopyWith<$Res> {
  _$GetEventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetEventLoadingCopyWith<$Res> {
  factory _$$GetEventLoadingCopyWith(
          _$GetEventLoading value, $Res Function(_$GetEventLoading) then) =
      __$$GetEventLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEventLoadingCopyWithImpl<$Res>
    extends _$GetEventStateCopyWithImpl<$Res, _$GetEventLoading>
    implements _$$GetEventLoadingCopyWith<$Res> {
  __$$GetEventLoadingCopyWithImpl(
      _$GetEventLoading _value, $Res Function(_$GetEventLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetEventLoading implements GetEventLoading {
  const _$GetEventLoading();

  @override
  String toString() {
    return 'GetEventState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEventLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Event event) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Event event)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(GetEventLoading value) loading,
    required TResult Function(GetEventLoaded value) loaded,
    required TResult Function(GetEventError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEventLoading value)? loading,
    TResult? Function(GetEventLoaded value)? loaded,
    TResult? Function(GetEventError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEventLoading value)? loading,
    TResult Function(GetEventLoaded value)? loaded,
    TResult Function(GetEventError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetEventLoading implements GetEventState {
  const factory GetEventLoading() = _$GetEventLoading;
}

/// @nodoc
abstract class _$$GetEventLoadedCopyWith<$Res> {
  factory _$$GetEventLoadedCopyWith(
          _$GetEventLoaded value, $Res Function(_$GetEventLoaded) then) =
      __$$GetEventLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$GetEventLoadedCopyWithImpl<$Res>
    extends _$GetEventStateCopyWithImpl<$Res, _$GetEventLoaded>
    implements _$$GetEventLoadedCopyWith<$Res> {
  __$$GetEventLoadedCopyWithImpl(
      _$GetEventLoaded _value, $Res Function(_$GetEventLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$GetEventLoaded(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$GetEventLoaded implements GetEventLoaded {
  const _$GetEventLoaded({required this.event});

  @override
  final Event event;

  @override
  String toString() {
    return 'GetEventState.loaded(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventLoaded &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventLoadedCopyWith<_$GetEventLoaded> get copyWith =>
      __$$GetEventLoadedCopyWithImpl<_$GetEventLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Event event) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Event event)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEventLoading value) loading,
    required TResult Function(GetEventLoaded value) loaded,
    required TResult Function(GetEventError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEventLoading value)? loading,
    TResult? Function(GetEventLoaded value)? loaded,
    TResult? Function(GetEventError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEventLoading value)? loading,
    TResult Function(GetEventLoaded value)? loaded,
    TResult Function(GetEventError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GetEventLoaded implements GetEventState {
  const factory GetEventLoaded({required final Event event}) = _$GetEventLoaded;

  Event get event;
  @JsonKey(ignore: true)
  _$$GetEventLoadedCopyWith<_$GetEventLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetEventErrorCopyWith<$Res> {
  factory _$$GetEventErrorCopyWith(
          _$GetEventError value, $Res Function(_$GetEventError) then) =
      __$$GetEventErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetEventErrorCopyWithImpl<$Res>
    extends _$GetEventStateCopyWithImpl<$Res, _$GetEventError>
    implements _$$GetEventErrorCopyWith<$Res> {
  __$$GetEventErrorCopyWithImpl(
      _$GetEventError _value, $Res Function(_$GetEventError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetEventError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetEventError implements GetEventError {
  const _$GetEventError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'GetEventState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventErrorCopyWith<_$GetEventError> get copyWith =>
      __$$GetEventErrorCopyWithImpl<_$GetEventError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Event event) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Event event)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEventLoading value) loading,
    required TResult Function(GetEventLoaded value) loaded,
    required TResult Function(GetEventError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEventLoading value)? loading,
    TResult? Function(GetEventLoaded value)? loaded,
    TResult? Function(GetEventError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEventLoading value)? loading,
    TResult Function(GetEventLoaded value)? loaded,
    TResult Function(GetEventError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetEventError implements GetEventState {
  const factory GetEventError({required final String error}) = _$GetEventError;

  String get error;
  @JsonKey(ignore: true)
  _$$GetEventErrorCopyWith<_$GetEventError> get copyWith =>
      throw _privateConstructorUsedError;
}
