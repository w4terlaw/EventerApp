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
abstract class _$$_EventBookingCopyWith<$Res>
    implements $EventBookingEventCopyWith<$Res> {
  factory _$$_EventBookingCopyWith(
          _$_EventBooking value, $Res Function(_$_EventBooking) then) =
      __$$_EventBookingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int eventId, EventDatesCheckbox eventDates});
}

/// @nodoc
class __$$_EventBookingCopyWithImpl<$Res>
    extends _$EventBookingEventCopyWithImpl<$Res, _$_EventBooking>
    implements _$$_EventBookingCopyWith<$Res> {
  __$$_EventBookingCopyWithImpl(
      _$_EventBooking _value, $Res Function(_$_EventBooking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? eventDates = null,
  }) {
    return _then(_$_EventBooking(
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

class _$_EventBooking implements _EventBooking {
  const _$_EventBooking({required this.eventId, required this.eventDates});

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
            other is _$_EventBooking &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.eventDates, eventDates) ||
                other.eventDates == eventDates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, eventDates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventBookingCopyWith<_$_EventBooking> get copyWith =>
      __$$_EventBookingCopyWithImpl<_$_EventBooking>(this, _$identity);

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
      required final EventDatesCheckbox eventDates}) = _$_EventBooking;

  @override
  int get eventId;
  @override
  EventDatesCheckbox get eventDates;
  @override
  @JsonKey(ignore: true)
  _$$_EventBookingCopyWith<_$_EventBooking> get copyWith =>
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
abstract class _$$EventBookingInitialCopyWith<$Res> {
  factory _$$EventBookingInitialCopyWith(_$EventBookingInitial value,
          $Res Function(_$EventBookingInitial) then) =
      __$$EventBookingInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventBookingInitialCopyWithImpl<$Res>
    extends _$EventBookingStateCopyWithImpl<$Res, _$EventBookingInitial>
    implements _$$EventBookingInitialCopyWith<$Res> {
  __$$EventBookingInitialCopyWithImpl(
      _$EventBookingInitial _value, $Res Function(_$EventBookingInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EventBookingInitial implements EventBookingInitial {
  const _$EventBookingInitial();

  @override
  String toString() {
    return 'EventBookingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventBookingInitial);
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
  const factory EventBookingInitial() = _$EventBookingInitial;
}

/// @nodoc
abstract class _$$EventBookingLoadingCopyWith<$Res> {
  factory _$$EventBookingLoadingCopyWith(_$EventBookingLoading value,
          $Res Function(_$EventBookingLoading) then) =
      __$$EventBookingLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventBookingLoadingCopyWithImpl<$Res>
    extends _$EventBookingStateCopyWithImpl<$Res, _$EventBookingLoading>
    implements _$$EventBookingLoadingCopyWith<$Res> {
  __$$EventBookingLoadingCopyWithImpl(
      _$EventBookingLoading _value, $Res Function(_$EventBookingLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EventBookingLoading implements EventBookingLoading {
  const _$EventBookingLoading();

  @override
  String toString() {
    return 'EventBookingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventBookingLoading);
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
  const factory EventBookingLoading() = _$EventBookingLoading;
}

/// @nodoc
abstract class _$$EventBookingSuccessCopyWith<$Res> {
  factory _$$EventBookingSuccessCopyWith(_$EventBookingSuccess value,
          $Res Function(_$EventBookingSuccess) then) =
      __$$EventBookingSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventBookingSuccessCopyWithImpl<$Res>
    extends _$EventBookingStateCopyWithImpl<$Res, _$EventBookingSuccess>
    implements _$$EventBookingSuccessCopyWith<$Res> {
  __$$EventBookingSuccessCopyWithImpl(
      _$EventBookingSuccess _value, $Res Function(_$EventBookingSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EventBookingSuccess implements EventBookingSuccess {
  const _$EventBookingSuccess();

  @override
  String toString() {
    return 'EventBookingState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventBookingSuccess);
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
  const factory EventBookingSuccess() = _$EventBookingSuccess;
}

/// @nodoc
abstract class _$$EventBookingErrorCopyWith<$Res> {
  factory _$$EventBookingErrorCopyWith(
          _$EventBookingError value, $Res Function(_$EventBookingError) then) =
      __$$EventBookingErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventBookingErrorCopyWithImpl<$Res>
    extends _$EventBookingStateCopyWithImpl<$Res, _$EventBookingError>
    implements _$$EventBookingErrorCopyWith<$Res> {
  __$$EventBookingErrorCopyWithImpl(
      _$EventBookingError _value, $Res Function(_$EventBookingError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EventBookingError implements EventBookingError {
  const _$EventBookingError();

  @override
  String toString() {
    return 'EventBookingState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventBookingError);
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
  const factory EventBookingError() = _$EventBookingError;
}
