// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_list_events_bloc.dart';

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
abstract class _$$EventsEventFetchImplCopyWith<$Res>
    implements $EventsEventCopyWith<$Res> {
  factory _$$EventsEventFetchImplCopyWith(_$EventsEventFetchImpl value,
          $Res Function(_$EventsEventFetchImpl) then) =
      __$$EventsEventFetchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, String name});
}

/// @nodoc
class __$$EventsEventFetchImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$EventsEventFetchImpl>
    implements _$$EventsEventFetchImplCopyWith<$Res> {
  __$$EventsEventFetchImplCopyWithImpl(_$EventsEventFetchImpl _value,
      $Res Function(_$EventsEventFetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? name = null,
  }) {
    return _then(_$EventsEventFetchImpl(
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

class _$EventsEventFetchImpl implements _EventsEventFetch {
  const _$EventsEventFetchImpl({required this.page, required this.name});

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
            other is _$EventsEventFetchImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsEventFetchImplCopyWith<_$EventsEventFetchImpl> get copyWith =>
      __$$EventsEventFetchImplCopyWithImpl<_$EventsEventFetchImpl>(
          this, _$identity);

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
      required final String name}) = _$EventsEventFetchImpl;

  @override
  int get page;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$EventsEventFetchImplCopyWith<_$EventsEventFetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(Failure failure)? error,
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
abstract class _$$EventsStateLoadingImplCopyWith<$Res> {
  factory _$$EventsStateLoadingImplCopyWith(_$EventsStateLoadingImpl value,
          $Res Function(_$EventsStateLoadingImpl) then) =
      __$$EventsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventsStateLoadingImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$EventsStateLoadingImpl>
    implements _$$EventsStateLoadingImplCopyWith<$Res> {
  __$$EventsStateLoadingImplCopyWithImpl(_$EventsStateLoadingImpl _value,
      $Res Function(_$EventsStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EventsStateLoadingImpl implements _EventsStateLoading {
  const _$EventsStateLoadingImpl();

  @override
  String toString() {
    return 'EventsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
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
  const factory _EventsStateLoading() = _$EventsStateLoadingImpl;
}

/// @nodoc
abstract class _$$EventsStateLoadedImplCopyWith<$Res> {
  factory _$$EventsStateLoadedImplCopyWith(_$EventsStateLoadedImpl value,
          $Res Function(_$EventsStateLoadedImpl) then) =
      __$$EventsStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Event> events});
}

/// @nodoc
class __$$EventsStateLoadedImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$EventsStateLoadedImpl>
    implements _$$EventsStateLoadedImplCopyWith<$Res> {
  __$$EventsStateLoadedImplCopyWithImpl(_$EventsStateLoadedImpl _value,
      $Res Function(_$EventsStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$EventsStateLoadedImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$EventsStateLoadedImpl implements _EventsStateLoaded {
  const _$EventsStateLoadedImpl({required final List<Event> events})
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
            other is _$EventsStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsStateLoadedImplCopyWith<_$EventsStateLoadedImpl> get copyWith =>
      __$$EventsStateLoadedImplCopyWithImpl<_$EventsStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(Failure failure)? error,
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
      _$EventsStateLoadedImpl;

  List<Event> get events;
  @JsonKey(ignore: true)
  _$$EventsStateLoadedImplCopyWith<_$EventsStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventsStateErrorImplCopyWith<$Res> {
  factory _$$EventsStateErrorImplCopyWith(_$EventsStateErrorImpl value,
          $Res Function(_$EventsStateErrorImpl) then) =
      __$$EventsStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$EventsStateErrorImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$EventsStateErrorImpl>
    implements _$$EventsStateErrorImplCopyWith<$Res> {
  __$$EventsStateErrorImplCopyWithImpl(_$EventsStateErrorImpl _value,
      $Res Function(_$EventsStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$EventsStateErrorImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$EventsStateErrorImpl implements _EventsStateError {
  const _$EventsStateErrorImpl({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'EventsState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsStateErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsStateErrorImplCopyWith<_$EventsStateErrorImpl> get copyWith =>
      __$$EventsStateErrorImplCopyWithImpl<_$EventsStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
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
  const factory _EventsStateError({required final Failure failure}) =
      _$EventsStateErrorImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$EventsStateErrorImplCopyWith<_$EventsStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
