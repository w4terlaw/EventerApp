// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_organizer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteOrganizer _$FavoriteOrganizerFromJson(Map<String, dynamic> json) {
  return _FavoriteOrganizer.fromJson(json);
}

/// @nodoc
mixin _$FavoriteOrganizer {
  int get id => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  Organizer get organizer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteOrganizerCopyWith<FavoriteOrganizer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteOrganizerCopyWith<$Res> {
  factory $FavoriteOrganizerCopyWith(
          FavoriteOrganizer value, $Res Function(FavoriteOrganizer) then) =
      _$FavoriteOrganizerCopyWithImpl<$Res, FavoriteOrganizer>;
  @useResult
  $Res call({int id, DateTime dateTime, Organizer organizer});

  $OrganizerCopyWith<$Res> get organizer;
}

/// @nodoc
class _$FavoriteOrganizerCopyWithImpl<$Res, $Val extends FavoriteOrganizer>
    implements $FavoriteOrganizerCopyWith<$Res> {
  _$FavoriteOrganizerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = null,
    Object? organizer = null,
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
      organizer: null == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as Organizer,
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
abstract class _$$FavoriteOrganizerImplCopyWith<$Res>
    implements $FavoriteOrganizerCopyWith<$Res> {
  factory _$$FavoriteOrganizerImplCopyWith(_$FavoriteOrganizerImpl value,
          $Res Function(_$FavoriteOrganizerImpl) then) =
      __$$FavoriteOrganizerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DateTime dateTime, Organizer organizer});

  @override
  $OrganizerCopyWith<$Res> get organizer;
}

/// @nodoc
class __$$FavoriteOrganizerImplCopyWithImpl<$Res>
    extends _$FavoriteOrganizerCopyWithImpl<$Res, _$FavoriteOrganizerImpl>
    implements _$$FavoriteOrganizerImplCopyWith<$Res> {
  __$$FavoriteOrganizerImplCopyWithImpl(_$FavoriteOrganizerImpl _value,
      $Res Function(_$FavoriteOrganizerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = null,
    Object? organizer = null,
  }) {
    return _then(_$FavoriteOrganizerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      organizer: null == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as Organizer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteOrganizerImpl implements _FavoriteOrganizer {
  const _$FavoriteOrganizerImpl(
      {required this.id, required this.dateTime, required this.organizer});

  factory _$FavoriteOrganizerImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteOrganizerImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime dateTime;
  @override
  final Organizer organizer;

  @override
  String toString() {
    return 'FavoriteOrganizer(id: $id, dateTime: $dateTime, organizer: $organizer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteOrganizerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.organizer, organizer) ||
                other.organizer == organizer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateTime, organizer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteOrganizerImplCopyWith<_$FavoriteOrganizerImpl> get copyWith =>
      __$$FavoriteOrganizerImplCopyWithImpl<_$FavoriteOrganizerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteOrganizerImplToJson(
      this,
    );
  }
}

abstract class _FavoriteOrganizer implements FavoriteOrganizer {
  const factory _FavoriteOrganizer(
      {required final int id,
      required final DateTime dateTime,
      required final Organizer organizer}) = _$FavoriteOrganizerImpl;

  factory _FavoriteOrganizer.fromJson(Map<String, dynamic> json) =
      _$FavoriteOrganizerImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get dateTime;
  @override
  Organizer get organizer;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteOrganizerImplCopyWith<_$FavoriteOrganizerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
