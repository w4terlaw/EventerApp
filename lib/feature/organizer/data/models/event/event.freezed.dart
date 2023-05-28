// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get expectedAmount => throw _privateConstructorUsedError;
  int get countOfMembers => throw _privateConstructorUsedError;
  double get recommendedDonation => throw _privateConstructorUsedError;
  List<EventDates> get eventDates => throw _privateConstructorUsedError;
  List<Venues> get venues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      double expectedAmount,
      int countOfMembers,
      double recommendedDonation,
      List<EventDates> eventDates,
      List<Venues> venues});
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? expectedAmount = null,
    Object? countOfMembers = null,
    Object? recommendedDonation = null,
    Object? eventDates = null,
    Object? venues = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      expectedAmount: null == expectedAmount
          ? _value.expectedAmount
          : expectedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      countOfMembers: null == countOfMembers
          ? _value.countOfMembers
          : countOfMembers // ignore: cast_nullable_to_non_nullable
              as int,
      recommendedDonation: null == recommendedDonation
          ? _value.recommendedDonation
          : recommendedDonation // ignore: cast_nullable_to_non_nullable
              as double,
      eventDates: null == eventDates
          ? _value.eventDates
          : eventDates // ignore: cast_nullable_to_non_nullable
              as List<EventDates>,
      venues: null == venues
          ? _value.venues
          : venues // ignore: cast_nullable_to_non_nullable
              as List<Venues>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$_EventCopyWith(_$_Event value, $Res Function(_$_Event) then) =
      __$$_EventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      double expectedAmount,
      int countOfMembers,
      double recommendedDonation,
      List<EventDates> eventDates,
      List<Venues> venues});
}

/// @nodoc
class __$$_EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res, _$_Event>
    implements _$$_EventCopyWith<$Res> {
  __$$_EventCopyWithImpl(_$_Event _value, $Res Function(_$_Event) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? expectedAmount = null,
    Object? countOfMembers = null,
    Object? recommendedDonation = null,
    Object? eventDates = null,
    Object? venues = null,
  }) {
    return _then(_$_Event(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      expectedAmount: null == expectedAmount
          ? _value.expectedAmount
          : expectedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      countOfMembers: null == countOfMembers
          ? _value.countOfMembers
          : countOfMembers // ignore: cast_nullable_to_non_nullable
              as int,
      recommendedDonation: null == recommendedDonation
          ? _value.recommendedDonation
          : recommendedDonation // ignore: cast_nullable_to_non_nullable
              as double,
      eventDates: null == eventDates
          ? _value._eventDates
          : eventDates // ignore: cast_nullable_to_non_nullable
              as List<EventDates>,
      venues: null == venues
          ? _value._venues
          : venues // ignore: cast_nullable_to_non_nullable
              as List<Venues>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Event implements _Event {
  const _$_Event(
      {required this.id,
      required this.name,
      required this.description,
      required this.expectedAmount,
      required this.countOfMembers,
      required this.recommendedDonation,
      required final List<EventDates> eventDates,
      required final List<Venues> venues})
      : _eventDates = eventDates,
        _venues = venues;

  factory _$_Event.fromJson(Map<String, dynamic> json) =>
      _$$_EventFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double expectedAmount;
  @override
  final int countOfMembers;
  @override
  final double recommendedDonation;
  final List<EventDates> _eventDates;
  @override
  List<EventDates> get eventDates {
    if (_eventDates is EqualUnmodifiableListView) return _eventDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventDates);
  }

  final List<Venues> _venues;
  @override
  List<Venues> get venues {
    if (_venues is EqualUnmodifiableListView) return _venues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_venues);
  }

  @override
  String toString() {
    return 'Event(id: $id, name: $name, description: $description, expectedAmount: $expectedAmount, countOfMembers: $countOfMembers, recommendedDonation: $recommendedDonation, eventDates: $eventDates, venues: $venues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Event &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.expectedAmount, expectedAmount) ||
                other.expectedAmount == expectedAmount) &&
            (identical(other.countOfMembers, countOfMembers) ||
                other.countOfMembers == countOfMembers) &&
            (identical(other.recommendedDonation, recommendedDonation) ||
                other.recommendedDonation == recommendedDonation) &&
            const DeepCollectionEquality()
                .equals(other._eventDates, _eventDates) &&
            const DeepCollectionEquality().equals(other._venues, _venues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      expectedAmount,
      countOfMembers,
      recommendedDonation,
      const DeepCollectionEquality().hash(_eventDates),
      const DeepCollectionEquality().hash(_venues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventCopyWith<_$_Event> get copyWith =>
      __$$_EventCopyWithImpl<_$_Event>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event(
      {required final int id,
      required final String name,
      required final String description,
      required final double expectedAmount,
      required final int countOfMembers,
      required final double recommendedDonation,
      required final List<EventDates> eventDates,
      required final List<Venues> venues}) = _$_Event;

  factory _Event.fromJson(Map<String, dynamic> json) = _$_Event.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  double get expectedAmount;
  @override
  int get countOfMembers;
  @override
  double get recommendedDonation;
  @override
  List<EventDates> get eventDates;
  @override
  List<Venues> get venues;
  @override
  @JsonKey(ignore: true)
  _$$_EventCopyWith<_$_Event> get copyWith =>
      throw _privateConstructorUsedError;
}

Venues _$VenuesFromJson(Map<String, dynamic> json) {
  return _Venues.fromJson(json);
}

/// @nodoc
mixin _$Venues {
  String get name => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VenuesCopyWith<Venues> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VenuesCopyWith<$Res> {
  factory $VenuesCopyWith(Venues value, $Res Function(Venues) then) =
      _$VenuesCopyWithImpl<$Res, Venues>;
  @useResult
  $Res call({String name, List<String> photos});
}

/// @nodoc
class _$VenuesCopyWithImpl<$Res, $Val extends Venues>
    implements $VenuesCopyWith<$Res> {
  _$VenuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? photos = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VenuesCopyWith<$Res> implements $VenuesCopyWith<$Res> {
  factory _$$_VenuesCopyWith(_$_Venues value, $Res Function(_$_Venues) then) =
      __$$_VenuesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> photos});
}

/// @nodoc
class __$$_VenuesCopyWithImpl<$Res>
    extends _$VenuesCopyWithImpl<$Res, _$_Venues>
    implements _$$_VenuesCopyWith<$Res> {
  __$$_VenuesCopyWithImpl(_$_Venues _value, $Res Function(_$_Venues) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? photos = null,
  }) {
    return _then(_$_Venues(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Venues implements _Venues {
  const _$_Venues({required this.name, required final List<String> photos})
      : _photos = photos;

  factory _$_Venues.fromJson(Map<String, dynamic> json) =>
      _$$_VenuesFromJson(json);

  @override
  final String name;
  final List<String> _photos;
  @override
  List<String> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'Venues(name: $name, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Venues &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VenuesCopyWith<_$_Venues> get copyWith =>
      __$$_VenuesCopyWithImpl<_$_Venues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VenuesToJson(
      this,
    );
  }
}

abstract class _Venues implements Venues {
  const factory _Venues(
      {required final String name,
      required final List<String> photos}) = _$_Venues;

  factory _Venues.fromJson(Map<String, dynamic> json) = _$_Venues.fromJson;

  @override
  String get name;
  @override
  List<String> get photos;
  @override
  @JsonKey(ignore: true)
  _$$_VenuesCopyWith<_$_Venues> get copyWith =>
      throw _privateConstructorUsedError;
}

EventDates _$EventDatesFromJson(Map<String, dynamic> json) {
  return _EventDates.fromJson(json);
}

/// @nodoc
mixin _$EventDates {
  int get id => throw _privateConstructorUsedError;
  DateTime get startDateTime => throw _privateConstructorUsedError;
  DateTime get endDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDatesCopyWith<EventDates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDatesCopyWith<$Res> {
  factory $EventDatesCopyWith(
          EventDates value, $Res Function(EventDates) then) =
      _$EventDatesCopyWithImpl<$Res, EventDates>;
  @useResult
  $Res call({int id, DateTime startDateTime, DateTime endDateTime});
}

/// @nodoc
class _$EventDatesCopyWithImpl<$Res, $Val extends EventDates>
    implements $EventDatesCopyWith<$Res> {
  _$EventDatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDateTime = null,
    Object? endDateTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventDatesCopyWith<$Res>
    implements $EventDatesCopyWith<$Res> {
  factory _$$_EventDatesCopyWith(
          _$_EventDates value, $Res Function(_$_EventDates) then) =
      __$$_EventDatesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DateTime startDateTime, DateTime endDateTime});
}

/// @nodoc
class __$$_EventDatesCopyWithImpl<$Res>
    extends _$EventDatesCopyWithImpl<$Res, _$_EventDates>
    implements _$$_EventDatesCopyWith<$Res> {
  __$$_EventDatesCopyWithImpl(
      _$_EventDates _value, $Res Function(_$_EventDates) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDateTime = null,
    Object? endDateTime = null,
  }) {
    return _then(_$_EventDates(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventDates implements _EventDates {
  const _$_EventDates(
      {required this.id,
      required this.startDateTime,
      required this.endDateTime});

  factory _$_EventDates.fromJson(Map<String, dynamic> json) =>
      _$$_EventDatesFromJson(json);

  @override
  final int id;
  @override
  final DateTime startDateTime;
  @override
  final DateTime endDateTime;

  @override
  String toString() {
    return 'EventDates(id: $id, startDateTime: $startDateTime, endDateTime: $endDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDates &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, startDateTime, endDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDatesCopyWith<_$_EventDates> get copyWith =>
      __$$_EventDatesCopyWithImpl<_$_EventDates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventDatesToJson(
      this,
    );
  }
}

abstract class _EventDates implements EventDates {
  const factory _EventDates(
      {required final int id,
      required final DateTime startDateTime,
      required final DateTime endDateTime}) = _$_EventDates;

  factory _EventDates.fromJson(Map<String, dynamic> json) =
      _$_EventDates.fromJson;

  @override
  int get id;
  @override
  DateTime get startDateTime;
  @override
  DateTime get endDateTime;
  @override
  @JsonKey(ignore: true)
  _$$_EventDatesCopyWith<_$_EventDates> get copyWith =>
      throw _privateConstructorUsedError;
}
