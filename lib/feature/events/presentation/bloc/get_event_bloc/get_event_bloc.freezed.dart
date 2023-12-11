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
abstract class _$$GetEventByIdImplCopyWith<$Res>
    implements $GetEventEventCopyWith<$Res> {
  factory _$$GetEventByIdImplCopyWith(
          _$GetEventByIdImpl value, $Res Function(_$GetEventByIdImpl) then) =
      __$$GetEventByIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int eventId});
}

/// @nodoc
class __$$GetEventByIdImplCopyWithImpl<$Res>
    extends _$GetEventEventCopyWithImpl<$Res, _$GetEventByIdImpl>
    implements _$$GetEventByIdImplCopyWith<$Res> {
  __$$GetEventByIdImplCopyWithImpl(
      _$GetEventByIdImpl _value, $Res Function(_$GetEventByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$GetEventByIdImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetEventByIdImpl implements _GetEventById {
  const _$GetEventByIdImpl({required this.eventId});

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
            other is _$GetEventByIdImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventByIdImplCopyWith<_$GetEventByIdImpl> get copyWith =>
      __$$GetEventByIdImplCopyWithImpl<_$GetEventByIdImpl>(this, _$identity);

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
  const factory _GetEventById({required final int eventId}) =
      _$GetEventByIdImpl;

  @override
  int get eventId;
  @override
  @JsonKey(ignore: true)
  _$$GetEventByIdImplCopyWith<_$GetEventByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetEventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Event event) loaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Event event)? loaded,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? loaded,
    TResult Function(Failure failure)? error,
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
abstract class _$$GetEventLoadingImplCopyWith<$Res> {
  factory _$$GetEventLoadingImplCopyWith(_$GetEventLoadingImpl value,
          $Res Function(_$GetEventLoadingImpl) then) =
      __$$GetEventLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEventLoadingImplCopyWithImpl<$Res>
    extends _$GetEventStateCopyWithImpl<$Res, _$GetEventLoadingImpl>
    implements _$$GetEventLoadingImplCopyWith<$Res> {
  __$$GetEventLoadingImplCopyWithImpl(
      _$GetEventLoadingImpl _value, $Res Function(_$GetEventLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetEventLoadingImpl implements GetEventLoading {
  const _$GetEventLoadingImpl();

  @override
  String toString() {
    return 'GetEventState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEventLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Event event) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Event event)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? loaded,
    TResult Function(Failure failure)? error,
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
  const factory GetEventLoading() = _$GetEventLoadingImpl;
}

/// @nodoc
abstract class _$$GetEventLoadedImplCopyWith<$Res> {
  factory _$$GetEventLoadedImplCopyWith(_$GetEventLoadedImpl value,
          $Res Function(_$GetEventLoadedImpl) then) =
      __$$GetEventLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$GetEventLoadedImplCopyWithImpl<$Res>
    extends _$GetEventStateCopyWithImpl<$Res, _$GetEventLoadedImpl>
    implements _$$GetEventLoadedImplCopyWith<$Res> {
  __$$GetEventLoadedImplCopyWithImpl(
      _$GetEventLoadedImpl _value, $Res Function(_$GetEventLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$GetEventLoadedImpl(
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

class _$GetEventLoadedImpl implements GetEventLoaded {
  const _$GetEventLoadedImpl({required this.event});

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
            other is _$GetEventLoadedImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventLoadedImplCopyWith<_$GetEventLoadedImpl> get copyWith =>
      __$$GetEventLoadedImplCopyWithImpl<_$GetEventLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Event event) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Event event)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? loaded,
    TResult Function(Failure failure)? error,
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
  const factory GetEventLoaded({required final Event event}) =
      _$GetEventLoadedImpl;

  Event get event;
  @JsonKey(ignore: true)
  _$$GetEventLoadedImplCopyWith<_$GetEventLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetEventErrorImplCopyWith<$Res> {
  factory _$$GetEventErrorImplCopyWith(
          _$GetEventErrorImpl value, $Res Function(_$GetEventErrorImpl) then) =
      __$$GetEventErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$GetEventErrorImplCopyWithImpl<$Res>
    extends _$GetEventStateCopyWithImpl<$Res, _$GetEventErrorImpl>
    implements _$$GetEventErrorImplCopyWith<$Res> {
  __$$GetEventErrorImplCopyWithImpl(
      _$GetEventErrorImpl _value, $Res Function(_$GetEventErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GetEventErrorImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$GetEventErrorImpl implements GetEventError {
  const _$GetEventErrorImpl({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetEventState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventErrorImplCopyWith<_$GetEventErrorImpl> get copyWith =>
      __$$GetEventErrorImplCopyWithImpl<_$GetEventErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Event event) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Event event)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Event event)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
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
  const factory GetEventError({required final Failure failure}) =
      _$GetEventErrorImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$GetEventErrorImplCopyWith<_$GetEventErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
