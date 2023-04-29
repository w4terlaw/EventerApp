// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventsEvent {
  int get page => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String name) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String name)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String name)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsEventCopyWith<EventsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsEventCopyWith<$Res> {
  factory $EventsEventCopyWith(
          EventsEvent value, $Res Function(EventsEvent) then) =
      _$EventsEventCopyWithImpl<$Res, EventsEvent>;
  @useResult
  $Res call({int page, String name});
}

/// @nodoc
class _$EventsEventCopyWithImpl<$Res, $Val extends EventsEvent>
    implements $EventsEventCopyWith<$Res> {
  _$EventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventsEventFetchCopyWith<$Res>
    implements $EventsEventCopyWith<$Res> {
  factory _$$_EventsEventFetchCopyWith(
          _$_EventsEventFetch value, $Res Function(_$_EventsEventFetch) then) =
      __$$_EventsEventFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, String name});
}

/// @nodoc
class __$$_EventsEventFetchCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$_EventsEventFetch>
    implements _$$_EventsEventFetchCopyWith<$Res> {
  __$$_EventsEventFetchCopyWithImpl(
      _$_EventsEventFetch _value, $Res Function(_$_EventsEventFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? name = null,
  }) {
    return _then(_$_EventsEventFetch(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventsEventFetch implements _EventsEventFetch {
  const _$_EventsEventFetch({required this.page, required this.name});

  @override
  final int page;
  @override
  final String name;

  @override
  String toString() {
    return 'EventsEvent.fetch(page: $page, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsEventFetch &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsEventFetchCopyWith<_$_EventsEventFetch> get copyWith =>
      __$$_EventsEventFetchCopyWithImpl<_$_EventsEventFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String name) fetch,
  }) {
    return fetch(page, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String name)? fetch,
  }) {
    return fetch?.call(page, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String name)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(page, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _EventsEventFetch implements EventsEvent {
  const factory _EventsEventFetch(
      {required final int page,
      required final String name}) = _$_EventsEventFetch;

  @override
  int get page;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_EventsEventFetchCopyWith<_$_EventsEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsStateLoading value) loading,
    required TResult Function(_EventsStateLoaded value) loaded,
    required TResult Function(_EventsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsStateLoading value)? loading,
    TResult? Function(_EventsStateLoaded value)? loaded,
    TResult? Function(_EventsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsStateLoading value)? loading,
    TResult Function(_EventsStateLoaded value)? loaded,
    TResult Function(_EventsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsStateCopyWith<$Res> {
  factory $EventsStateCopyWith(
          EventsState value, $Res Function(EventsState) then) =
      _$EventsStateCopyWithImpl<$Res, EventsState>;
}

/// @nodoc
class _$EventsStateCopyWithImpl<$Res, $Val extends EventsState>
    implements $EventsStateCopyWith<$Res> {
  _$EventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EventsStateLoadingCopyWith<$Res> {
  factory _$$_EventsStateLoadingCopyWith(_$_EventsStateLoading value,
          $Res Function(_$_EventsStateLoading) then) =
      __$$_EventsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventsStateLoadingCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$_EventsStateLoading>
    implements _$$_EventsStateLoadingCopyWith<$Res> {
  __$$_EventsStateLoadingCopyWithImpl(
      _$_EventsStateLoading _value, $Res Function(_$_EventsStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventsStateLoading implements _EventsStateLoading {
  const _$_EventsStateLoading();

  @override
  String toString() {
    return 'EventsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
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
    required TResult Function(_EventsStateLoading value) loading,
    required TResult Function(_EventsStateLoaded value) loaded,
    required TResult Function(_EventsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsStateLoading value)? loading,
    TResult? Function(_EventsStateLoaded value)? loaded,
    TResult? Function(_EventsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsStateLoading value)? loading,
    TResult Function(_EventsStateLoaded value)? loaded,
    TResult Function(_EventsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _EventsStateLoading implements EventsState {
  const factory _EventsStateLoading() = _$_EventsStateLoading;
}

/// @nodoc
abstract class _$$_EventsStateLoadedCopyWith<$Res> {
  factory _$$_EventsStateLoadedCopyWith(_$_EventsStateLoaded value,
          $Res Function(_$_EventsStateLoaded) then) =
      __$$_EventsStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Event> events});
}

/// @nodoc
class __$$_EventsStateLoadedCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$_EventsStateLoaded>
    implements _$$_EventsStateLoadedCopyWith<$Res> {
  __$$_EventsStateLoadedCopyWithImpl(
      _$_EventsStateLoaded _value, $Res Function(_$_EventsStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$_EventsStateLoaded(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$_EventsStateLoaded implements _EventsStateLoaded {
  const _$_EventsStateLoaded({required final List<Event> events})
      : _events = events;

  final List<Event> _events;
  @override
  List<Event> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'EventsState.loaded(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsStateLoaded &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsStateLoadedCopyWith<_$_EventsStateLoaded> get copyWith =>
      __$$_EventsStateLoadedCopyWithImpl<_$_EventsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsStateLoading value) loading,
    required TResult Function(_EventsStateLoaded value) loaded,
    required TResult Function(_EventsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsStateLoading value)? loading,
    TResult? Function(_EventsStateLoaded value)? loaded,
    TResult? Function(_EventsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsStateLoading value)? loading,
    TResult Function(_EventsStateLoaded value)? loaded,
    TResult Function(_EventsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _EventsStateLoaded implements EventsState {
  const factory _EventsStateLoaded({required final List<Event> events}) =
      _$_EventsStateLoaded;

  List<Event> get events;
  @JsonKey(ignore: true)
  _$$_EventsStateLoadedCopyWith<_$_EventsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventsStateErrorCopyWith<$Res> {
  factory _$$_EventsStateErrorCopyWith(
          _$_EventsStateError value, $Res Function(_$_EventsStateError) then) =
      __$$_EventsStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_EventsStateErrorCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$_EventsStateError>
    implements _$$_EventsStateErrorCopyWith<$Res> {
  __$$_EventsStateErrorCopyWithImpl(
      _$_EventsStateError _value, $Res Function(_$_EventsStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_EventsStateError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventsStateError implements _EventsStateError {
  const _$_EventsStateError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'EventsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsStateErrorCopyWith<_$_EventsStateError> get copyWith =>
      __$$_EventsStateErrorCopyWithImpl<_$_EventsStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
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
    required TResult Function(_EventsStateLoading value) loading,
    required TResult Function(_EventsStateLoaded value) loaded,
    required TResult Function(_EventsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsStateLoading value)? loading,
    TResult? Function(_EventsStateLoaded value)? loaded,
    TResult? Function(_EventsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsStateLoading value)? loading,
    TResult Function(_EventsStateLoaded value)? loaded,
    TResult Function(_EventsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _EventsStateError implements EventsState {
  const factory _EventsStateError({required final String message}) =
      _$_EventsStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$_EventsStateErrorCopyWith<_$_EventsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
