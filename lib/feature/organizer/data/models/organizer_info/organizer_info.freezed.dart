// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organizer_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrganizerInfo _$OrganizerInfoFromJson(Map<String, dynamic> json) {
  return _OrganizerInfo.fromJson(json);
}

/// @nodoc
mixin _$OrganizerInfo {
  int get countOfSubscribers => throw _privateConstructorUsedError;

  int get countOfEvents => throw _privateConstructorUsedError;

  bool get isSubscribed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrganizerInfoCopyWith<OrganizerInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizerInfoCopyWith<$Res> {
  factory $OrganizerInfoCopyWith(
          OrganizerInfo value, $Res Function(OrganizerInfo) then) =
      _$OrganizerInfoCopyWithImpl<$Res, OrganizerInfo>;

  @useResult
  $Res call({int countOfSubscribers, int countOfEvents, bool isSubscribed});
}

/// @nodoc
class _$OrganizerInfoCopyWithImpl<$Res, $Val extends OrganizerInfo>
    implements $OrganizerInfoCopyWith<$Res> {
  _$OrganizerInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countOfSubscribers = null,
    Object? countOfEvents = null,
    Object? isSubscribed = null,
  }) {
    return _then(_value.copyWith(
      countOfSubscribers: null == countOfSubscribers
          ? _value.countOfSubscribers
          : countOfSubscribers // ignore: cast_nullable_to_non_nullable
              as int,
      countOfEvents: null == countOfEvents
          ? _value.countOfEvents
          : countOfEvents // ignore: cast_nullable_to_non_nullable
              as int,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrganizerInfoCopyWith<$Res>
    implements $OrganizerInfoCopyWith<$Res> {
  factory _$$_OrganizerInfoCopyWith(
          _$_OrganizerInfo value, $Res Function(_$_OrganizerInfo) then) =
      __$$_OrganizerInfoCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({int countOfSubscribers, int countOfEvents, bool isSubscribed});
}

/// @nodoc
class __$$_OrganizerInfoCopyWithImpl<$Res>
    extends _$OrganizerInfoCopyWithImpl<$Res, _$_OrganizerInfo>
    implements _$$_OrganizerInfoCopyWith<$Res> {
  __$$_OrganizerInfoCopyWithImpl(
      _$_OrganizerInfo _value, $Res Function(_$_OrganizerInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countOfSubscribers = null,
    Object? countOfEvents = null,
    Object? isSubscribed = null,
  }) {
    return _then(_$_OrganizerInfo(
      countOfSubscribers: null == countOfSubscribers
          ? _value.countOfSubscribers
          : countOfSubscribers // ignore: cast_nullable_to_non_nullable
              as int,
      countOfEvents: null == countOfEvents
          ? _value.countOfEvents
          : countOfEvents // ignore: cast_nullable_to_non_nullable
              as int,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrganizerInfo implements _OrganizerInfo {
  const _$_OrganizerInfo(
      {required this.countOfSubscribers,
      required this.countOfEvents,
      required this.isSubscribed});

  factory _$_OrganizerInfo.fromJson(Map<String, dynamic> json) =>
      _$$_OrganizerInfoFromJson(json);

  @override
  final int countOfSubscribers;
  @override
  final int countOfEvents;
  @override
  final bool isSubscribed;

  @override
  String toString() {
    return 'OrganizerInfo(countOfSubscribers: $countOfSubscribers, countOfEvents: $countOfEvents, isSubscribed: $isSubscribed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrganizerInfo &&
            (identical(other.countOfSubscribers, countOfSubscribers) ||
                other.countOfSubscribers == countOfSubscribers) &&
            (identical(other.countOfEvents, countOfEvents) ||
                other.countOfEvents == countOfEvents) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, countOfSubscribers, countOfEvents, isSubscribed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrganizerInfoCopyWith<_$_OrganizerInfo> get copyWith =>
      __$$_OrganizerInfoCopyWithImpl<_$_OrganizerInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrganizerInfoToJson(
      this,
    );
  }
}

abstract class _OrganizerInfo implements OrganizerInfo {
  const factory _OrganizerInfo(
      {required final int countOfSubscribers,
      required final int countOfEvents,
      required final bool isSubscribed}) = _$_OrganizerInfo;

  factory _OrganizerInfo.fromJson(Map<String, dynamic> json) =
      _$_OrganizerInfo.fromJson;

  @override
  int get countOfSubscribers;

  @override
  int get countOfEvents;

  @override
  bool get isSubscribed;

  @override
  @JsonKey(ignore: true)
  _$$_OrganizerInfoCopyWith<_$_OrganizerInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
