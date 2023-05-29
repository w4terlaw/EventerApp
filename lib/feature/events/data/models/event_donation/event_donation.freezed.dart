// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_donation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventDonation _$EventDonationFromJson(Map<String, dynamic> json) {
  return _EventDonation.fromJson(json);
}

/// @nodoc
mixin _$EventDonation {
  int get id => throw _privateConstructorUsedError;

  DateTime get dateTime => throw _privateConstructorUsedError;

  double get amount => throw _privateConstructorUsedError;

  User get user => throw _privateConstructorUsedError;

  Event get event => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventDonationCopyWith<EventDonation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDonationCopyWith<$Res> {
  factory $EventDonationCopyWith(
          EventDonation value, $Res Function(EventDonation) then) =
      _$EventDonationCopyWithImpl<$Res, EventDonation>;

  @useResult
  $Res call({int id, DateTime dateTime, double amount, User user, Event event});

  $UserCopyWith<$Res> get user;

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class _$EventDonationCopyWithImpl<$Res, $Val extends EventDonation>
    implements $EventDonationCopyWith<$Res> {
  _$EventDonationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = null,
    Object? amount = null,
    Object? user = null,
    Object? event = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EventDonationCopyWith<$Res>
    implements $EventDonationCopyWith<$Res> {
  factory _$$_EventDonationCopyWith(
          _$_EventDonation value, $Res Function(_$_EventDonation) then) =
      __$$_EventDonationCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({int id, DateTime dateTime, double amount, User user, Event event});

  @override
  $UserCopyWith<$Res> get user;

  @override
  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$_EventDonationCopyWithImpl<$Res>
    extends _$EventDonationCopyWithImpl<$Res, _$_EventDonation>
    implements _$$_EventDonationCopyWith<$Res> {
  __$$_EventDonationCopyWithImpl(
      _$_EventDonation _value, $Res Function(_$_EventDonation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = null,
    Object? amount = null,
    Object? user = null,
    Object? event = null,
  }) {
    return _then(_$_EventDonation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventDonation implements _EventDonation {
  const _$_EventDonation(
      {required this.id,
      required this.dateTime,
      required this.amount,
      required this.user,
      required this.event});

  factory _$_EventDonation.fromJson(Map<String, dynamic> json) =>
      _$$_EventDonationFromJson(json);

  @override
  final int id;
  @override
  final DateTime dateTime;
  @override
  final double amount;
  @override
  final User user;
  @override
  final Event event;

  @override
  String toString() {
    return 'EventDonation(id: $id, dateTime: $dateTime, amount: $amount, user: $user, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDonation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.event, event) || other.event == event));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, dateTime, amount, user, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDonationCopyWith<_$_EventDonation> get copyWith =>
      __$$_EventDonationCopyWithImpl<_$_EventDonation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventDonationToJson(
      this,
    );
  }
}

abstract class _EventDonation implements EventDonation {
  const factory _EventDonation(
      {required final int id,
      required final DateTime dateTime,
      required final double amount,
      required final User user,
      required final Event event}) = _$_EventDonation;

  factory _EventDonation.fromJson(Map<String, dynamic> json) =
      _$_EventDonation.fromJson;

  @override
  int get id;

  @override
  DateTime get dateTime;

  @override
  double get amount;

  @override
  User get user;

  @override
  Event get event;

  @override
  @JsonKey(ignore: true)
  _$$_EventDonationCopyWith<_$_EventDonation> get copyWith =>
      throw _privateConstructorUsedError;
}
