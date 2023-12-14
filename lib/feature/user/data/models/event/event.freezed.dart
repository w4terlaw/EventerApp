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
  Organizer get organizer => throw _privateConstructorUsedError;
  double get expectedAmount => throw _privateConstructorUsedError;
  int get countOfMembers => throw _privateConstructorUsedError;
  double get recommendedDonation => throw _privateConstructorUsedError;
  List<EventDates> get eventDates => throw _privateConstructorUsedError;
  List<Venues> get venues => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;

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
      Organizer organizer,
      double expectedAmount,
      int countOfMembers,
      double recommendedDonation,
      List<EventDates> eventDates,
      List<Venues> venues,
      int number});

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
    Object? organizer = null,
    Object? expectedAmount = null,
    Object? countOfMembers = null,
    Object? recommendedDonation = null,
    Object? eventDates = null,
    Object? venues = null,
    Object? number = null,
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
      organizer: null == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as Organizer,
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
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
          _$EventImpl value, $Res Function(_$EventImpl) then) =
      __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      Organizer organizer,
      double expectedAmount,
      int countOfMembers,
      double recommendedDonation,
      List<EventDates> eventDates,
      List<Venues> venues,
      int number});

  @override
  $OrganizerCopyWith<$Res> get organizer;
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
      _$EventImpl _value, $Res Function(_$EventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? organizer = null,
    Object? expectedAmount = null,
    Object? countOfMembers = null,
    Object? recommendedDonation = null,
    Object? eventDates = null,
    Object? venues = null,
    Object? number = null,
  }) {
    return _then(_$EventImpl(
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
      organizer: null == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as Organizer,
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
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventImpl implements _Event {
  const _$EventImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.organizer,
      required this.expectedAmount,
      required this.countOfMembers,
      required this.recommendedDonation,
      required final List<EventDates> eventDates,
      required final List<Venues> venues,
      required this.number})
      : _eventDates = eventDates,
        _venues = venues;

  factory _$EventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final Organizer organizer;
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
  final int number;

  @override
  String toString() {
    return 'Event(id: $id, name: $name, description: $description, organizer: $organizer, expectedAmount: $expectedAmount, countOfMembers: $countOfMembers, recommendedDonation: $recommendedDonation, eventDates: $eventDates, venues: $venues, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.organizer, organizer) ||
                other.organizer == organizer) &&
            (identical(other.expectedAmount, expectedAmount) ||
                other.expectedAmount == expectedAmount) &&
            (identical(other.countOfMembers, countOfMembers) ||
                other.countOfMembers == countOfMembers) &&
            (identical(other.recommendedDonation, recommendedDonation) ||
                other.recommendedDonation == recommendedDonation) &&
            const DeepCollectionEquality()
                .equals(other._eventDates, _eventDates) &&
            const DeepCollectionEquality().equals(other._venues, _venues) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      organizer,
      expectedAmount,
      countOfMembers,
      recommendedDonation,
      const DeepCollectionEquality().hash(_eventDates),
      const DeepCollectionEquality().hash(_venues),
      number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventImplToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event(
      {required final int id,
      required final String name,
      required final String description,
      required final Organizer organizer,
      required final double expectedAmount,
      required final int countOfMembers,
      required final double recommendedDonation,
      required final List<EventDates> eventDates,
      required final List<Venues> venues,
      required final int number}) = _$EventImpl;

  factory _Event.fromJson(Map<String, dynamic> json) = _$EventImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  Organizer get organizer;
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
  int get number;
  @override
  @JsonKey(ignore: true)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  State get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call({int id, String name, State state});

  $StateCopyWith<$Res> get state;
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? state = null,
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
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as State,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StateCopyWith<$Res> get state {
    return $StateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CityImplCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$CityImplCopyWith(
          _$CityImpl value, $Res Function(_$CityImpl) then) =
      __$$CityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, State state});

  @override
  $StateCopyWith<$Res> get state;
}

/// @nodoc
class __$$CityImplCopyWithImpl<$Res>
    extends _$CityCopyWithImpl<$Res, _$CityImpl>
    implements _$$CityImplCopyWith<$Res> {
  __$$CityImplCopyWithImpl(_$CityImpl _value, $Res Function(_$CityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? state = null,
  }) {
    return _then(_$CityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as State,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityImpl implements _City {
  const _$CityImpl({required this.id, required this.name, required this.state});

  factory _$CityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final State state;

  @override
  String toString() {
    return 'City(id: $id, name: $name, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      __$$CityImplCopyWithImpl<_$CityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityImplToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City(
      {required final int id,
      required final String name,
      required final State state}) = _$CityImpl;

  factory _City.fromJson(Map<String, dynamic> json) = _$CityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  State get state;
  @override
  @JsonKey(ignore: true)
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
mixin _$Country {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res, Country>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res, $Val extends Country>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryImplCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$CountryImplCopyWith(
          _$CountryImpl value, $Res Function(_$CountryImpl) then) =
      __$$CountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CountryImplCopyWithImpl<$Res>
    extends _$CountryCopyWithImpl<$Res, _$CountryImpl>
    implements _$$CountryImplCopyWith<$Res> {
  __$$CountryImplCopyWithImpl(
      _$CountryImpl _value, $Res Function(_$CountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CountryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryImpl implements _Country {
  const _$CountryImpl({required this.id, required this.name});

  factory _$CountryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Country(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      __$$CountryImplCopyWithImpl<_$CountryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryImplToJson(
      this,
    );
  }
}

abstract class _Country implements Country {
  const factory _Country({required final int id, required final String name}) =
      _$CountryImpl;

  factory _Country.fromJson(Map<String, dynamic> json) = _$CountryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
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
abstract class _$$EventDatesImplCopyWith<$Res>
    implements $EventDatesCopyWith<$Res> {
  factory _$$EventDatesImplCopyWith(
          _$EventDatesImpl value, $Res Function(_$EventDatesImpl) then) =
      __$$EventDatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DateTime startDateTime, DateTime endDateTime});
}

/// @nodoc
class __$$EventDatesImplCopyWithImpl<$Res>
    extends _$EventDatesCopyWithImpl<$Res, _$EventDatesImpl>
    implements _$$EventDatesImplCopyWith<$Res> {
  __$$EventDatesImplCopyWithImpl(
      _$EventDatesImpl _value, $Res Function(_$EventDatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDateTime = null,
    Object? endDateTime = null,
  }) {
    return _then(_$EventDatesImpl(
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
class _$EventDatesImpl implements _EventDates {
  const _$EventDatesImpl(
      {required this.id,
      required this.startDateTime,
      required this.endDateTime});

  factory _$EventDatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventDatesImplFromJson(json);

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
            other is _$EventDatesImpl &&
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
  _$$EventDatesImplCopyWith<_$EventDatesImpl> get copyWith =>
      __$$EventDatesImplCopyWithImpl<_$EventDatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventDatesImplToJson(
      this,
    );
  }
}

abstract class _EventDates implements EventDates {
  const factory _EventDates(
      {required final int id,
      required final DateTime startDateTime,
      required final DateTime endDateTime}) = _$EventDatesImpl;

  factory _EventDates.fromJson(Map<String, dynamic> json) =
      _$EventDatesImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get startDateTime;
  @override
  DateTime get endDateTime;
  @override
  @JsonKey(ignore: true)
  _$$EventDatesImplCopyWith<_$EventDatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Organizer _$OrganizerFromJson(Map<String, dynamic> json) {
  return _Organizer.fromJson(json);
}

/// @nodoc
mixin _$Organizer {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizerCopyWith<Organizer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizerCopyWith<$Res> {
  factory $OrganizerCopyWith(Organizer value, $Res Function(Organizer) then) =
      _$OrganizerCopyWithImpl<$Res, Organizer>;
  @useResult
  $Res call({int id, String name, String logo});
}

/// @nodoc
class _$OrganizerCopyWithImpl<$Res, $Val extends Organizer>
    implements $OrganizerCopyWith<$Res> {
  _$OrganizerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logo = null,
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
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrganizerImplCopyWith<$Res>
    implements $OrganizerCopyWith<$Res> {
  factory _$$OrganizerImplCopyWith(
          _$OrganizerImpl value, $Res Function(_$OrganizerImpl) then) =
      __$$OrganizerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String logo});
}

/// @nodoc
class __$$OrganizerImplCopyWithImpl<$Res>
    extends _$OrganizerCopyWithImpl<$Res, _$OrganizerImpl>
    implements _$$OrganizerImplCopyWith<$Res> {
  __$$OrganizerImplCopyWithImpl(
      _$OrganizerImpl _value, $Res Function(_$OrganizerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logo = null,
  }) {
    return _then(_$OrganizerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizerImpl implements _Organizer {
  const _$OrganizerImpl(
      {required this.id, required this.name, required this.logo});

  factory _$OrganizerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizerImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String logo;

  @override
  String toString() {
    return 'Organizer(id: $id, name: $name, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizerImplCopyWith<_$OrganizerImpl> get copyWith =>
      __$$OrganizerImplCopyWithImpl<_$OrganizerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizerImplToJson(
      this,
    );
  }
}

abstract class _Organizer implements Organizer {
  const factory _Organizer(
      {required final int id,
      required final String name,
      required final String logo}) = _$OrganizerImpl;

  factory _Organizer.fromJson(Map<String, dynamic> json) =
      _$OrganizerImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$$OrganizerImplCopyWith<_$OrganizerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

State _$StateFromJson(Map<String, dynamic> json) {
  return _State.fromJson(json);
}

/// @nodoc
mixin _$State {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Country get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateCopyWith<State> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCopyWith<$Res> {
  factory $StateCopyWith(State value, $Res Function(State) then) =
      _$StateCopyWithImpl<$Res, State>;
  @useResult
  $Res call({int id, String name, Country country});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class _$StateCopyWithImpl<$Res, $Val extends State>
    implements $StateCopyWith<$Res> {
  _$StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
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
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res> implements $StateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, Country country});

  @override
  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$StateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
  }) {
    return _then(_$StateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StateImpl implements _State {
  const _$StateImpl(
      {required this.id, required this.name, required this.country});

  factory _$StateImpl.fromJson(Map<String, dynamic> json) =>
      _$$StateImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final Country country;

  @override
  String toString() {
    return 'State(id: $id, name: $name, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StateImplToJson(
      this,
    );
  }
}

abstract class _State implements State {
  const factory _State(
      {required final int id,
      required final String name,
      required final Country country}) = _$StateImpl;

  factory _State.fromJson(Map<String, dynamic> json) = _$StateImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  Country get country;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Venues _$VenuesFromJson(Map<String, dynamic> json) {
  return _Venues.fromJson(json);
}

/// @nodoc
mixin _$Venues {
  String get name => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  City get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VenuesCopyWith<Venues> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VenuesCopyWith<$Res> {
  factory $VenuesCopyWith(Venues value, $Res Function(Venues) then) =
      _$VenuesCopyWithImpl<$Res, Venues>;
  @useResult
  $Res call({String name, List<String> photos, String address, City city});

  $CityCopyWith<$Res> get city;
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
    Object? address = null,
    Object? city = null,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res> get city {
    return $CityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VenuesImplCopyWith<$Res> implements $VenuesCopyWith<$Res> {
  factory _$$VenuesImplCopyWith(
          _$VenuesImpl value, $Res Function(_$VenuesImpl) then) =
      __$$VenuesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> photos, String address, City city});

  @override
  $CityCopyWith<$Res> get city;
}

/// @nodoc
class __$$VenuesImplCopyWithImpl<$Res>
    extends _$VenuesCopyWithImpl<$Res, _$VenuesImpl>
    implements _$$VenuesImplCopyWith<$Res> {
  __$$VenuesImplCopyWithImpl(
      _$VenuesImpl _value, $Res Function(_$VenuesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? photos = null,
    Object? address = null,
    Object? city = null,
  }) {
    return _then(_$VenuesImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VenuesImpl implements _Venues {
  const _$VenuesImpl(
      {required this.name,
      required final List<String> photos,
      required this.address,
      required this.city})
      : _photos = photos;

  factory _$VenuesImpl.fromJson(Map<String, dynamic> json) =>
      _$$VenuesImplFromJson(json);

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
  final String address;
  @override
  final City city;

  @override
  String toString() {
    return 'Venues(name: $name, photos: $photos, address: $address, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VenuesImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_photos), address, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VenuesImplCopyWith<_$VenuesImpl> get copyWith =>
      __$$VenuesImplCopyWithImpl<_$VenuesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VenuesImplToJson(
      this,
    );
  }
}

abstract class _Venues implements Venues {
  const factory _Venues(
      {required final String name,
      required final List<String> photos,
      required final String address,
      required final City city}) = _$VenuesImpl;

  factory _Venues.fromJson(Map<String, dynamic> json) = _$VenuesImpl.fromJson;

  @override
  String get name;
  @override
  List<String> get photos;
  @override
  String get address;
  @override
  City get city;
  @override
  @JsonKey(ignore: true)
  _$$VenuesImplCopyWith<_$VenuesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
