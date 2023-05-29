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

  Organizer get organizer => throw _privateConstructorUsedError;

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
      Organizer organizer,
      List<EventDates> eventDates,
      List<Venues> venues});

  $OrganizerCopyWith<$Res> get organizer;
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
    Object? organizer = null,
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
      organizer: null == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as Organizer,
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

  @override
  @pragma('vm:prefer-inline')
  $OrganizerCopyWith<$Res> get organizer {
    return $OrganizerCopyWith<$Res>(_value.organizer, (value) {
      return _then(_value.copyWith(organizer: value) as $Val);
    });
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
      Organizer organizer,
      List<EventDates> eventDates,
      List<Venues> venues});

  @override
  $OrganizerCopyWith<$Res> get organizer;
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
    Object? organizer = null,
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
      organizer: null == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as Organizer,
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
      required this.organizer,
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
  @override
  final Organizer organizer;
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
    return 'Event(id: $id, name: $name, description: $description, expectedAmount: $expectedAmount, countOfMembers: $countOfMembers, recommendedDonation: $recommendedDonation, organizer: $organizer, eventDates: $eventDates, venues: $venues)';
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
            (identical(other.organizer, organizer) ||
                other.organizer == organizer) &&
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
      organizer,
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
      required final Organizer organizer,
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
  Organizer get organizer;

  @override
  List<EventDates> get eventDates;

  @override
  List<Venues> get venues;

  @override
  @JsonKey(ignore: true)
  _$$_EventCopyWith<_$_Event> get copyWith =>
      throw _privateConstructorUsedError;
}
