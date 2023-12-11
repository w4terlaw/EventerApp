// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventBookingEvent {
  int get eventId => throw _privateConstructorUsedError;
  EventDatesCheckbox get eventDates => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int eventId, EventDatesCheckbox eventDates)
        eventBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int eventId, EventDatesCheckbox eventDates)? eventBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int eventId, EventDatesCheckbox eventDates)? eventBooking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventBooking value) eventBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventBooking value)? eventBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventBooking value)? eventBooking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventBookingEventCopyWith<EventBookingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventBookingEventCopyWith<$Res> {
  factory $EventBookingEventCopyWith(
          EventBookingEvent value, $Res Function(EventBookingEvent) then) =
      _$EventBookingEventCopyWithImpl<$Res, EventBookingEvent>;
  @useResult
  $Res call({int eventId, EventDatesCheckbox eventDates});
}

/// @nodoc
class _$EventBookingEventCopyWithImpl<$Res, $Val extends EventBookingEvent>
    implements $EventBookingEventCopyWith<$Res> {
  _$EventBookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? eventDates = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      eventDates: null == eventDates
          ? _value.eventDates
          : eventDates // ignore: cast_nullable_to_non_nullable
              as EventDatesCheckbox,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventBookingImplCopyWith<$Res>
    implements $EventBookingEventCopyWith<$Res> {
  factory _$$EventBookingImplCopyWith(
          _$EventBookingImpl value, $Res Function(_$EventBookingImpl) then) =
      __$$EventBookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int eventId, EventDatesCheckbox eventDates});
}

/// @nodoc
class __$$EventBookingImplCopyWithImpl<$Res>
    extends _$EventBookingEventCopyWithImpl<$Res, _$EventBookingImpl>
    implements _$$EventBookingImplCopyWith<$Res> {
  __$$EventBookingImplCopyWithImpl(
      _$EventBookingImpl _value, $Res Function(_$EventBookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? eventDates = null,
  }) {
    return _then(_$EventBookingImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      eventDates: null == eventDates
          ? _value.eventDates
          : eventDates // ignore: cast_nullable_to_non_nullable
              as EventDatesCheckbox,
    ));
  }
}

/// @nodoc

class _$EventBookingImpl implements _EventBooking {
  const _$EventBookingImpl({required this.eventId, required this.eventDates});

  @override
  final int eventId;
  @override
  final EventDatesCheckbox eventDates;

  @override
  String toString() {
    return 'EventBookingEvent.eventBooking(eventId: $eventId, eventDates: $eventDates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventBookingImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.eventDates, eventDates) ||
                other.eventDates == eventDates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, eventDates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventBookingImplCopyWith<_$EventBookingImpl> get copyWith =>
      __$$EventBookingImplCopyWithImpl<_$EventBookingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int eventId, EventDatesCheckbox eventDates)
        eventBooking,
  }) {
    return eventBooking(eventId, eventDates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int eventId, EventDatesCheckbox eventDates)? eventBooking,
  }) {
    return eventBooking?.call(eventId, eventDates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int eventId, EventDatesCheckbox eventDates)? eventBooking,
    required TResult orElse(),
  }) {
    if (eventBooking != null) {
      return eventBooking(eventId, eventDates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventBooking value) eventBooking,
  }) {
    return eventBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventBooking value)? eventBooking,
  }) {
    return eventBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventBooking value)? eventBooking,
    required TResult orElse(),
  }) {
    if (eventBooking != null) {
      return eventBooking(this);
    }
    return orElse();
  }
}

abstract class _EventBooking implements EventBookingEvent {
  const factory _EventBooking(
      {required final int eventId,
      required final EventDatesCheckbox eventDates}) = _$EventBookingImpl;

  @override
  int get eventId;
  @override
  EventDatesCheckbox get eventDates;
  @override
  @JsonKey(ignore: true)
  _$$EventBookingImplCopyWith<_$EventBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventBookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventBookingInitial value) initial,
    required TResult Function(EventBookingLoading value) loading,
    required TResult Function(EventBookingSuccess value) success,
    required TResult Function(EventBookingError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventBookingInitial value)? initial,
    TResult? Function(EventBookingLoading value)? loading,
    TResult? Function(EventBookingSuccess value)? success,
    TResult? Function(EventBookingError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventBookingInitial value)? initial,
    TResult Function(EventBookingLoading value)? loading,
    TResult Function(EventBookingSuccess value)? success,
    TResult Function(EventBookingError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventBookingStateCopyWith<$Res> {
  factory $EventBookingStateCopyWith(
          EventBookingState value, $Res Function(EventBookingState) then) =
      _$EventBookingStateCopyWithImpl<$Res, EventBookingState>;
}

/// @nodoc
class _$EventBookingStateCopyWithImpl<$Res, $Val extends EventBookingState>
    implements $EventBookingStateCopyWith<$Res> {
  _$EventBookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EventBookingInitialImplCopyWith<$Res> {
  factory _$$EventBookingInitialImplCopyWith(_$EventBookingInitialImpl value,
          $Res Function(_$EventBookingInitialImpl) then) =
      __$$EventBookingInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventBookingInitialImplCopyWithImpl<$Res>
    extends _$EventBookingStateCopyWithImpl<$Res, _$EventBookingInitialImpl>
    implements _$$EventBookingInitialImplCopyWith<$Res> {
  __$$EventBookingInitialImplCopyWithImpl(_$EventBookingInitialImpl _value,
      $Res Function(_$EventBookingInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EventBookingInitialImpl implements EventBookingInitial {
  const _$EventBookingInitialImpl();

  @override
  String toString() {
    return 'EventBookingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventBookingInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
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
    required TResult Function(EventBookingInitial value) initial,
    required TResult Function(EventBookingLoading value) loading,
    required TResult Function(EventBookingSuccess value) success,
    required TResult Function(EventBookingError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventBookingInitial value)? initial,
    TResult? Function(EventBookingLoading value)? loading,
    TResult? Function(EventBookingSuccess value)? success,
    TResult? Function(EventBookingError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventBookingInitial value)? initial,
    TResult Function(EventBookingLoading value)? loading,
    TResult Function(EventBookingSuccess value)? success,
    TResult Function(EventBookingError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EventBookingInitial implements EventBookingState {
  const factory EventBookingInitial() = _$EventBookingInitialImpl;
}

/// @nodoc
abstract class _$$EventBookingLoadingImplCopyWith<$Res> {
  factory _$$EventBookingLoadingImplCopyWith(_$EventBookingLoadingImpl value,
          $Res Function(_$EventBookingLoadingImpl) then) =
      __$$EventBookingLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventBookingLoadingImplCopyWithImpl<$Res>
    extends _$EventBookingStateCopyWithImpl<$Res, _$EventBookingLoadingImpl>
    implements _$$EventBookingLoadingImplCopyWith<$Res> {
  __$$EventBookingLoadingImplCopyWithImpl(_$EventBookingLoadingImpl _value,
      $Res Function(_$EventBookingLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EventBookingLoadingImpl implements EventBookingLoading {
  const _$EventBookingLoadingImpl();

  @override
  String toString() {
    return 'EventBookingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventBookingLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
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
    required TResult Function(EventBookingInitial value) initial,
    required TResult Function(EventBookingLoading value) loading,
    required TResult Function(EventBookingSuccess value) success,
    required TResult Function(EventBookingError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventBookingInitial value)? initial,
    TResult? Function(EventBookingLoading value)? loading,
    TResult? Function(EventBookingSuccess value)? success,
    TResult? Function(EventBookingError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventBookingInitial value)? initial,
    TResult Function(EventBookingLoading value)? loading,
    TResult Function(EventBookingSuccess value)? success,
    TResult Function(EventBookingError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EventBookingLoading implements EventBookingState {
  const factory EventBookingLoading() = _$EventBookingLoadingImpl;
}

/// @nodoc
abstract class _$$EventBookingSuccessImplCopyWith<$Res> {
  factory _$$EventBookingSuccessImplCopyWith(_$EventBookingSuccessImpl value,
          $Res Function(_$EventBookingSuccessImpl) then) =
      __$$EventBookingSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventBookingSuccessImplCopyWithImpl<$Res>
    extends _$EventBookingStateCopyWithImpl<$Res, _$EventBookingSuccessImpl>
    implements _$$EventBookingSuccessImplCopyWith<$Res> {
  __$$EventBookingSuccessImplCopyWithImpl(_$EventBookingSuccessImpl _value,
      $Res Function(_$EventBookingSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EventBookingSuccessImpl implements EventBookingSuccess {
  const _$EventBookingSuccessImpl();

  @override
  String toString() {
    return 'EventBookingState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventBookingSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
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
    required TResult Function(EventBookingInitial value) initial,
    required TResult Function(EventBookingLoading value) loading,
    required TResult Function(EventBookingSuccess value) success,
    required TResult Function(EventBookingError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventBookingInitial value)? initial,
    TResult? Function(EventBookingLoading value)? loading,
    TResult? Function(EventBookingSuccess value)? success,
    TResult? Function(EventBookingError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventBookingInitial value)? initial,
    TResult Function(EventBookingLoading value)? loading,
    TResult Function(EventBookingSuccess value)? success,
    TResult Function(EventBookingError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class EventBookingSuccess implements EventBookingState {
  const factory EventBookingSuccess() = _$EventBookingSuccessImpl;
}

/// @nodoc
abstract class _$$EventBookingErrorImplCopyWith<$Res> {
  factory _$$EventBookingErrorImplCopyWith(_$EventBookingErrorImpl value,
          $Res Function(_$EventBookingErrorImpl) then) =
      __$$EventBookingErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventBookingErrorImplCopyWithImpl<$Res>
    extends _$EventBookingStateCopyWithImpl<$Res, _$EventBookingErrorImpl>
    implements _$$EventBookingErrorImplCopyWith<$Res> {
  __$$EventBookingErrorImplCopyWithImpl(_$EventBookingErrorImpl _value,
      $Res Function(_$EventBookingErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EventBookingErrorImpl implements EventBookingError {
  const _$EventBookingErrorImpl();

  @override
  String toString() {
    return 'EventBookingState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventBookingErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventBookingInitial value) initial,
    required TResult Function(EventBookingLoading value) loading,
    required TResult Function(EventBookingSuccess value) success,
    required TResult Function(EventBookingError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventBookingInitial value)? initial,
    TResult? Function(EventBookingLoading value)? loading,
    TResult? Function(EventBookingSuccess value)? success,
    TResult? Function(EventBookingError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventBookingInitial value)? initial,
    TResult Function(EventBookingLoading value)? loading,
    TResult Function(EventBookingSuccess value)? success,
    TResult Function(EventBookingError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EventBookingError implements EventBookingState {
  const factory EventBookingError() = _$EventBookingErrorImpl;
}
