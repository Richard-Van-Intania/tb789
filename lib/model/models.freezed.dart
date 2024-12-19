// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Authentication _$AuthenticationFromJson(Map<String, dynamic> json) {
  return _Authentication.fromJson(json);
}

/// @nodoc
mixin _$Authentication {
  int get verification_id => throw _privateConstructorUsedError;
  int get reference => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get access_token => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;
  int get users_id => throw _privateConstructorUsedError;

  /// Serializes this Authentication to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Authentication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticationCopyWith<Authentication> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationCopyWith<$Res> {
  factory $AuthenticationCopyWith(Authentication value, $Res Function(Authentication) then) = _$AuthenticationCopyWithImpl<$Res, Authentication>;
  @useResult
  $Res call({int verification_id, int reference, int code, String email, String password, String access_token, String refresh_token, int users_id});
}

/// @nodoc
class _$AuthenticationCopyWithImpl<$Res, $Val extends Authentication> implements $AuthenticationCopyWith<$Res> {
  _$AuthenticationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Authentication
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verification_id = null,
    Object? reference = null,
    Object? code = null,
    Object? email = null,
    Object? password = null,
    Object? access_token = null,
    Object? refresh_token = null,
    Object? users_id = null,
  }) {
    return _then(_value.copyWith(
      verification_id: null == verification_id
          ? _value.verification_id
          : verification_id // ignore: cast_nullable_to_non_nullable
              as int,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
      users_id: null == users_id
          ? _value.users_id
          : users_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationImplCopyWith<$Res> implements $AuthenticationCopyWith<$Res> {
  factory _$$AuthenticationImplCopyWith(_$AuthenticationImpl value, $Res Function(_$AuthenticationImpl) then) = __$$AuthenticationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int verification_id, int reference, int code, String email, String password, String access_token, String refresh_token, int users_id});
}

/// @nodoc
class __$$AuthenticationImplCopyWithImpl<$Res> extends _$AuthenticationCopyWithImpl<$Res, _$AuthenticationImpl> implements _$$AuthenticationImplCopyWith<$Res> {
  __$$AuthenticationImplCopyWithImpl(_$AuthenticationImpl _value, $Res Function(_$AuthenticationImpl) _then) : super(_value, _then);

  /// Create a copy of Authentication
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verification_id = null,
    Object? reference = null,
    Object? code = null,
    Object? email = null,
    Object? password = null,
    Object? access_token = null,
    Object? refresh_token = null,
    Object? users_id = null,
  }) {
    return _then(_$AuthenticationImpl(
      verification_id: null == verification_id
          ? _value.verification_id
          : verification_id // ignore: cast_nullable_to_non_nullable
              as int,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
      users_id: null == users_id
          ? _value.users_id
          : users_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationImpl implements _Authentication {
  const _$AuthenticationImpl({required this.verification_id, required this.reference, required this.code, required this.email, required this.password, required this.access_token, required this.refresh_token, required this.users_id});

  factory _$AuthenticationImpl.fromJson(Map<String, dynamic> json) => _$$AuthenticationImplFromJson(json);

  @override
  final int verification_id;
  @override
  final int reference;
  @override
  final int code;
  @override
  final String email;
  @override
  final String password;
  @override
  final String access_token;
  @override
  final String refresh_token;
  @override
  final int users_id;

  @override
  String toString() {
    return 'Authentication(verification_id: $verification_id, reference: $reference, code: $code, email: $email, password: $password, access_token: $access_token, refresh_token: $refresh_token, users_id: $users_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationImpl &&
            (identical(other.verification_id, verification_id) || other.verification_id == verification_id) &&
            (identical(other.reference, reference) || other.reference == reference) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password) &&
            (identical(other.access_token, access_token) || other.access_token == access_token) &&
            (identical(other.refresh_token, refresh_token) || other.refresh_token == refresh_token) &&
            (identical(other.users_id, users_id) || other.users_id == users_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, verification_id, reference, code, email, password, access_token, refresh_token, users_id);

  /// Create a copy of Authentication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationImplCopyWith<_$AuthenticationImpl> get copyWith => __$$AuthenticationImplCopyWithImpl<_$AuthenticationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationImplToJson(
      this,
    );
  }
}

abstract class _Authentication implements Authentication {
  const factory _Authentication({required final int verification_id, required final int reference, required final int code, required final String email, required final String password, required final String access_token, required final String refresh_token, required final int users_id}) = _$AuthenticationImpl;

  factory _Authentication.fromJson(Map<String, dynamic> json) = _$AuthenticationImpl.fromJson;

  @override
  int get verification_id;
  @override
  int get reference;
  @override
  int get code;
  @override
  String get email;
  @override
  String get password;
  @override
  String get access_token;
  @override
  String get refresh_token;
  @override
  int get users_id;

  /// Create a copy of Authentication
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationImplCopyWith<_$AuthenticationImpl> get copyWith => throw _privateConstructorUsedError;
}

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get profile_uri => throw _privateConstructorUsedError;
  String? get cover_uri => throw _privateConstructorUsedError;
  String? get information => throw _privateConstructorUsedError;

  /// Serializes this Profile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) = _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call({String name, String email, String? profile_uri, String? cover_uri, String? information});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? profile_uri = freezed,
    Object? cover_uri = freezed,
    Object? information = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile_uri: freezed == profile_uri
          ? _value.profile_uri
          : profile_uri // ignore: cast_nullable_to_non_nullable
              as String?,
      cover_uri: freezed == cover_uri
          ? _value.cover_uri
          : cover_uri // ignore: cast_nullable_to_non_nullable
              as String?,
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(_$ProfileImpl value, $Res Function(_$ProfileImpl) then) = __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String? profile_uri, String? cover_uri, String? information});
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl> implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(_$ProfileImpl _value, $Res Function(_$ProfileImpl) _then) : super(_value, _then);

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? profile_uri = freezed,
    Object? cover_uri = freezed,
    Object? information = freezed,
  }) {
    return _then(_$ProfileImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile_uri: freezed == profile_uri
          ? _value.profile_uri
          : profile_uri // ignore: cast_nullable_to_non_nullable
              as String?,
      cover_uri: freezed == cover_uri
          ? _value.cover_uri
          : cover_uri // ignore: cast_nullable_to_non_nullable
              as String?,
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImpl implements _Profile {
  const _$ProfileImpl({required this.name, required this.email, required this.profile_uri, required this.cover_uri, required this.information});

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) => _$$ProfileImplFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String? profile_uri;
  @override
  final String? cover_uri;
  @override
  final String? information;

  @override
  String toString() {
    return 'Profile(name: $name, email: $email, profile_uri: $profile_uri, cover_uri: $cover_uri, information: $information)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profile_uri, profile_uri) || other.profile_uri == profile_uri) &&
            (identical(other.cover_uri, cover_uri) || other.cover_uri == cover_uri) &&
            (identical(other.information, information) || other.information == information));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, profile_uri, cover_uri, information);

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith => __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImplToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  const factory _Profile({required final String name, required final String email, required final String? profile_uri, required final String? cover_uri, required final String? information}) = _$ProfileImpl;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String? get profile_uri;
  @override
  String? get cover_uri;
  @override
  String? get information;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith => throw _privateConstructorUsedError;
}

Plates _$PlatesFromJson(Map<String, dynamic> json) {
  return _Plates.fromJson(json);
}

/// @nodoc
mixin _$Plates {
  int get plates_id => throw _privateConstructorUsedError;
  String get front_text => throw _privateConstructorUsedError;
  int get plates_type_id => throw _privateConstructorUsedError;
  String? get plates_uri => throw _privateConstructorUsedError;
  bool get is_selling => throw _privateConstructorUsedError;
  bool get is_pin => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  String get add_date => throw _privateConstructorUsedError;
  int get front_number => throw _privateConstructorUsedError;
  int get back_number => throw _privateConstructorUsedError;
  int get vehicle_type_id => throw _privateConstructorUsedError;
  int get users_id => throw _privateConstructorUsedError;
  int get special_front_id => throw _privateConstructorUsedError;
  int get province_id => throw _privateConstructorUsedError;
  String? get information => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  bool get is_temporary => throw _privateConstructorUsedError;

  /// Serializes this Plates to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Plates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlatesCopyWith<Plates> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatesCopyWith<$Res> {
  factory $PlatesCopyWith(Plates value, $Res Function(Plates) then) = _$PlatesCopyWithImpl<$Res, Plates>;
  @useResult
  $Res call({int plates_id, String front_text, int plates_type_id, String? plates_uri, bool is_selling, bool is_pin, int total, String add_date, int front_number, int back_number, int vehicle_type_id, int users_id, int special_front_id, int province_id, String? information, int price, bool is_temporary});
}

/// @nodoc
class _$PlatesCopyWithImpl<$Res, $Val extends Plates> implements $PlatesCopyWith<$Res> {
  _$PlatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Plates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plates_id = null,
    Object? front_text = null,
    Object? plates_type_id = null,
    Object? plates_uri = freezed,
    Object? is_selling = null,
    Object? is_pin = null,
    Object? total = null,
    Object? add_date = null,
    Object? front_number = null,
    Object? back_number = null,
    Object? vehicle_type_id = null,
    Object? users_id = null,
    Object? special_front_id = null,
    Object? province_id = null,
    Object? information = freezed,
    Object? price = null,
    Object? is_temporary = null,
  }) {
    return _then(_value.copyWith(
      plates_id: null == plates_id
          ? _value.plates_id
          : plates_id // ignore: cast_nullable_to_non_nullable
              as int,
      front_text: null == front_text
          ? _value.front_text
          : front_text // ignore: cast_nullable_to_non_nullable
              as String,
      plates_type_id: null == plates_type_id
          ? _value.plates_type_id
          : plates_type_id // ignore: cast_nullable_to_non_nullable
              as int,
      plates_uri: freezed == plates_uri
          ? _value.plates_uri
          : plates_uri // ignore: cast_nullable_to_non_nullable
              as String?,
      is_selling: null == is_selling
          ? _value.is_selling
          : is_selling // ignore: cast_nullable_to_non_nullable
              as bool,
      is_pin: null == is_pin
          ? _value.is_pin
          : is_pin // ignore: cast_nullable_to_non_nullable
              as bool,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      add_date: null == add_date
          ? _value.add_date
          : add_date // ignore: cast_nullable_to_non_nullable
              as String,
      front_number: null == front_number
          ? _value.front_number
          : front_number // ignore: cast_nullable_to_non_nullable
              as int,
      back_number: null == back_number
          ? _value.back_number
          : back_number // ignore: cast_nullable_to_non_nullable
              as int,
      vehicle_type_id: null == vehicle_type_id
          ? _value.vehicle_type_id
          : vehicle_type_id // ignore: cast_nullable_to_non_nullable
              as int,
      users_id: null == users_id
          ? _value.users_id
          : users_id // ignore: cast_nullable_to_non_nullable
              as int,
      special_front_id: null == special_front_id
          ? _value.special_front_id
          : special_front_id // ignore: cast_nullable_to_non_nullable
              as int,
      province_id: null == province_id
          ? _value.province_id
          : province_id // ignore: cast_nullable_to_non_nullable
              as int,
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      is_temporary: null == is_temporary
          ? _value.is_temporary
          : is_temporary // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlatesImplCopyWith<$Res> implements $PlatesCopyWith<$Res> {
  factory _$$PlatesImplCopyWith(_$PlatesImpl value, $Res Function(_$PlatesImpl) then) = __$$PlatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int plates_id, String front_text, int plates_type_id, String? plates_uri, bool is_selling, bool is_pin, int total, String add_date, int front_number, int back_number, int vehicle_type_id, int users_id, int special_front_id, int province_id, String? information, int price, bool is_temporary});
}

/// @nodoc
class __$$PlatesImplCopyWithImpl<$Res> extends _$PlatesCopyWithImpl<$Res, _$PlatesImpl> implements _$$PlatesImplCopyWith<$Res> {
  __$$PlatesImplCopyWithImpl(_$PlatesImpl _value, $Res Function(_$PlatesImpl) _then) : super(_value, _then);

  /// Create a copy of Plates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plates_id = null,
    Object? front_text = null,
    Object? plates_type_id = null,
    Object? plates_uri = freezed,
    Object? is_selling = null,
    Object? is_pin = null,
    Object? total = null,
    Object? add_date = null,
    Object? front_number = null,
    Object? back_number = null,
    Object? vehicle_type_id = null,
    Object? users_id = null,
    Object? special_front_id = null,
    Object? province_id = null,
    Object? information = freezed,
    Object? price = null,
    Object? is_temporary = null,
  }) {
    return _then(_$PlatesImpl(
      plates_id: null == plates_id
          ? _value.plates_id
          : plates_id // ignore: cast_nullable_to_non_nullable
              as int,
      front_text: null == front_text
          ? _value.front_text
          : front_text // ignore: cast_nullable_to_non_nullable
              as String,
      plates_type_id: null == plates_type_id
          ? _value.plates_type_id
          : plates_type_id // ignore: cast_nullable_to_non_nullable
              as int,
      plates_uri: freezed == plates_uri
          ? _value.plates_uri
          : plates_uri // ignore: cast_nullable_to_non_nullable
              as String?,
      is_selling: null == is_selling
          ? _value.is_selling
          : is_selling // ignore: cast_nullable_to_non_nullable
              as bool,
      is_pin: null == is_pin
          ? _value.is_pin
          : is_pin // ignore: cast_nullable_to_non_nullable
              as bool,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      add_date: null == add_date
          ? _value.add_date
          : add_date // ignore: cast_nullable_to_non_nullable
              as String,
      front_number: null == front_number
          ? _value.front_number
          : front_number // ignore: cast_nullable_to_non_nullable
              as int,
      back_number: null == back_number
          ? _value.back_number
          : back_number // ignore: cast_nullable_to_non_nullable
              as int,
      vehicle_type_id: null == vehicle_type_id
          ? _value.vehicle_type_id
          : vehicle_type_id // ignore: cast_nullable_to_non_nullable
              as int,
      users_id: null == users_id
          ? _value.users_id
          : users_id // ignore: cast_nullable_to_non_nullable
              as int,
      special_front_id: null == special_front_id
          ? _value.special_front_id
          : special_front_id // ignore: cast_nullable_to_non_nullable
              as int,
      province_id: null == province_id
          ? _value.province_id
          : province_id // ignore: cast_nullable_to_non_nullable
              as int,
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      is_temporary: null == is_temporary
          ? _value.is_temporary
          : is_temporary // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlatesImpl implements _Plates {
  const _$PlatesImpl(
      {required this.plates_id,
      required this.front_text,
      required this.plates_type_id,
      required this.plates_uri,
      required this.is_selling,
      required this.is_pin,
      required this.total,
      required this.add_date,
      required this.front_number,
      required this.back_number,
      required this.vehicle_type_id,
      required this.users_id,
      required this.special_front_id,
      required this.province_id,
      required this.information,
      required this.price,
      required this.is_temporary});

  factory _$PlatesImpl.fromJson(Map<String, dynamic> json) => _$$PlatesImplFromJson(json);

  @override
  final int plates_id;
  @override
  final String front_text;
  @override
  final int plates_type_id;
  @override
  final String? plates_uri;
  @override
  final bool is_selling;
  @override
  final bool is_pin;
  @override
  final int total;
  @override
  final String add_date;
  @override
  final int front_number;
  @override
  final int back_number;
  @override
  final int vehicle_type_id;
  @override
  final int users_id;
  @override
  final int special_front_id;
  @override
  final int province_id;
  @override
  final String? information;
  @override
  final int price;
  @override
  final bool is_temporary;

  @override
  String toString() {
    return 'Plates(plates_id: $plates_id, front_text: $front_text, plates_type_id: $plates_type_id, plates_uri: $plates_uri, is_selling: $is_selling, is_pin: $is_pin, total: $total, add_date: $add_date, front_number: $front_number, back_number: $back_number, vehicle_type_id: $vehicle_type_id, users_id: $users_id, special_front_id: $special_front_id, province_id: $province_id, information: $information, price: $price, is_temporary: $is_temporary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatesImpl &&
            (identical(other.plates_id, plates_id) || other.plates_id == plates_id) &&
            (identical(other.front_text, front_text) || other.front_text == front_text) &&
            (identical(other.plates_type_id, plates_type_id) || other.plates_type_id == plates_type_id) &&
            (identical(other.plates_uri, plates_uri) || other.plates_uri == plates_uri) &&
            (identical(other.is_selling, is_selling) || other.is_selling == is_selling) &&
            (identical(other.is_pin, is_pin) || other.is_pin == is_pin) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.add_date, add_date) || other.add_date == add_date) &&
            (identical(other.front_number, front_number) || other.front_number == front_number) &&
            (identical(other.back_number, back_number) || other.back_number == back_number) &&
            (identical(other.vehicle_type_id, vehicle_type_id) || other.vehicle_type_id == vehicle_type_id) &&
            (identical(other.users_id, users_id) || other.users_id == users_id) &&
            (identical(other.special_front_id, special_front_id) || other.special_front_id == special_front_id) &&
            (identical(other.province_id, province_id) || other.province_id == province_id) &&
            (identical(other.information, information) || other.information == information) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.is_temporary, is_temporary) || other.is_temporary == is_temporary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, plates_id, front_text, plates_type_id, plates_uri, is_selling, is_pin, total, add_date, front_number, back_number, vehicle_type_id, users_id, special_front_id, province_id, information, price, is_temporary);

  /// Create a copy of Plates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatesImplCopyWith<_$PlatesImpl> get copyWith => __$$PlatesImplCopyWithImpl<_$PlatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlatesImplToJson(
      this,
    );
  }
}

abstract class _Plates implements Plates {
  const factory _Plates(
      {required final int plates_id,
      required final String front_text,
      required final int plates_type_id,
      required final String? plates_uri,
      required final bool is_selling,
      required final bool is_pin,
      required final int total,
      required final String add_date,
      required final int front_number,
      required final int back_number,
      required final int vehicle_type_id,
      required final int users_id,
      required final int special_front_id,
      required final int province_id,
      required final String? information,
      required final int price,
      required final bool is_temporary}) = _$PlatesImpl;

  factory _Plates.fromJson(Map<String, dynamic> json) = _$PlatesImpl.fromJson;

  @override
  int get plates_id;
  @override
  String get front_text;
  @override
  int get plates_type_id;
  @override
  String? get plates_uri;
  @override
  bool get is_selling;
  @override
  bool get is_pin;
  @override
  int get total;
  @override
  String get add_date;
  @override
  int get front_number;
  @override
  int get back_number;
  @override
  int get vehicle_type_id;
  @override
  int get users_id;
  @override
  int get special_front_id;
  @override
  int get province_id;
  @override
  String? get information;
  @override
  int get price;
  @override
  bool get is_temporary;

  /// Create a copy of Plates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlatesImplCopyWith<_$PlatesImpl> get copyWith => throw _privateConstructorUsedError;
}

UniversalId _$UniversalIdFromJson(Map<String, dynamic> json) {
  return _UniversalId.fromJson(json);
}

/// @nodoc
mixin _$UniversalId {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this UniversalId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UniversalId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UniversalIdCopyWith<UniversalId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversalIdCopyWith<$Res> {
  factory $UniversalIdCopyWith(UniversalId value, $Res Function(UniversalId) then) = _$UniversalIdCopyWithImpl<$Res, UniversalId>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$UniversalIdCopyWithImpl<$Res, $Val extends UniversalId> implements $UniversalIdCopyWith<$Res> {
  _$UniversalIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UniversalId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UniversalIdImplCopyWith<$Res> implements $UniversalIdCopyWith<$Res> {
  factory _$$UniversalIdImplCopyWith(_$UniversalIdImpl value, $Res Function(_$UniversalIdImpl) then) = __$$UniversalIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$UniversalIdImplCopyWithImpl<$Res> extends _$UniversalIdCopyWithImpl<$Res, _$UniversalIdImpl> implements _$$UniversalIdImplCopyWith<$Res> {
  __$$UniversalIdImplCopyWithImpl(_$UniversalIdImpl _value, $Res Function(_$UniversalIdImpl) _then) : super(_value, _then);

  /// Create a copy of UniversalId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UniversalIdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UniversalIdImpl implements _UniversalId {
  const _$UniversalIdImpl({required this.id});

  factory _$UniversalIdImpl.fromJson(Map<String, dynamic> json) => _$$UniversalIdImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'UniversalId(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$UniversalIdImpl && (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of UniversalId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UniversalIdImplCopyWith<_$UniversalIdImpl> get copyWith => __$$UniversalIdImplCopyWithImpl<_$UniversalIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UniversalIdImplToJson(
      this,
    );
  }
}

abstract class _UniversalId implements UniversalId {
  const factory _UniversalId({required final int id}) = _$UniversalIdImpl;

  factory _UniversalId.fromJson(Map<String, dynamic> json) = _$UniversalIdImpl.fromJson;

  @override
  int get id;

  /// Create a copy of UniversalId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UniversalIdImplCopyWith<_$UniversalIdImpl> get copyWith => throw _privateConstructorUsedError;
}

ArraySpecialFront _$ArraySpecialFrontFromJson(Map<String, dynamic> json) {
  return _ArraySpecialFront.fromJson(json);
}

/// @nodoc
mixin _$ArraySpecialFront {
  List<SpecialFront> get array => throw _privateConstructorUsedError;

  /// Serializes this ArraySpecialFront to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArraySpecialFront
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArraySpecialFrontCopyWith<ArraySpecialFront> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArraySpecialFrontCopyWith<$Res> {
  factory $ArraySpecialFrontCopyWith(ArraySpecialFront value, $Res Function(ArraySpecialFront) then) = _$ArraySpecialFrontCopyWithImpl<$Res, ArraySpecialFront>;
  @useResult
  $Res call({List<SpecialFront> array});
}

/// @nodoc
class _$ArraySpecialFrontCopyWithImpl<$Res, $Val extends ArraySpecialFront> implements $ArraySpecialFrontCopyWith<$Res> {
  _$ArraySpecialFrontCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArraySpecialFront
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? array = null,
  }) {
    return _then(_value.copyWith(
      array: null == array
          ? _value.array
          : array // ignore: cast_nullable_to_non_nullable
              as List<SpecialFront>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArraySpecialFrontImplCopyWith<$Res> implements $ArraySpecialFrontCopyWith<$Res> {
  factory _$$ArraySpecialFrontImplCopyWith(_$ArraySpecialFrontImpl value, $Res Function(_$ArraySpecialFrontImpl) then) = __$$ArraySpecialFrontImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SpecialFront> array});
}

/// @nodoc
class __$$ArraySpecialFrontImplCopyWithImpl<$Res> extends _$ArraySpecialFrontCopyWithImpl<$Res, _$ArraySpecialFrontImpl> implements _$$ArraySpecialFrontImplCopyWith<$Res> {
  __$$ArraySpecialFrontImplCopyWithImpl(_$ArraySpecialFrontImpl _value, $Res Function(_$ArraySpecialFrontImpl) _then) : super(_value, _then);

  /// Create a copy of ArraySpecialFront
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? array = null,
  }) {
    return _then(_$ArraySpecialFrontImpl(
      array: null == array
          ? _value._array
          : array // ignore: cast_nullable_to_non_nullable
              as List<SpecialFront>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArraySpecialFrontImpl implements _ArraySpecialFront {
  const _$ArraySpecialFrontImpl({required final List<SpecialFront> array}) : _array = array;

  factory _$ArraySpecialFrontImpl.fromJson(Map<String, dynamic> json) => _$$ArraySpecialFrontImplFromJson(json);

  final List<SpecialFront> _array;
  @override
  List<SpecialFront> get array {
    if (_array is EqualUnmodifiableListView) return _array;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_array);
  }

  @override
  String toString() {
    return 'ArraySpecialFront(array: $array)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ArraySpecialFrontImpl && const DeepCollectionEquality().equals(other._array, _array));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_array));

  /// Create a copy of ArraySpecialFront
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArraySpecialFrontImplCopyWith<_$ArraySpecialFrontImpl> get copyWith => __$$ArraySpecialFrontImplCopyWithImpl<_$ArraySpecialFrontImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArraySpecialFrontImplToJson(
      this,
    );
  }
}

abstract class _ArraySpecialFront implements ArraySpecialFront {
  const factory _ArraySpecialFront({required final List<SpecialFront> array}) = _$ArraySpecialFrontImpl;

  factory _ArraySpecialFront.fromJson(Map<String, dynamic> json) = _$ArraySpecialFrontImpl.fromJson;

  @override
  List<SpecialFront> get array;

  /// Create a copy of ArraySpecialFront
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArraySpecialFrontImplCopyWith<_$ArraySpecialFrontImpl> get copyWith => throw _privateConstructorUsedError;
}

SpecialFront _$SpecialFrontFromJson(Map<String, dynamic> json) {
  return _SpecialFront.fromJson(json);
}

/// @nodoc
mixin _$SpecialFront {
  int get special_front_id => throw _privateConstructorUsedError;
  String get front => throw _privateConstructorUsedError;

  /// Serializes this SpecialFront to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpecialFront
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecialFrontCopyWith<SpecialFront> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialFrontCopyWith<$Res> {
  factory $SpecialFrontCopyWith(SpecialFront value, $Res Function(SpecialFront) then) = _$SpecialFrontCopyWithImpl<$Res, SpecialFront>;
  @useResult
  $Res call({int special_front_id, String front});
}

/// @nodoc
class _$SpecialFrontCopyWithImpl<$Res, $Val extends SpecialFront> implements $SpecialFrontCopyWith<$Res> {
  _$SpecialFrontCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecialFront
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? special_front_id = null,
    Object? front = null,
  }) {
    return _then(_value.copyWith(
      special_front_id: null == special_front_id
          ? _value.special_front_id
          : special_front_id // ignore: cast_nullable_to_non_nullable
              as int,
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialFrontImplCopyWith<$Res> implements $SpecialFrontCopyWith<$Res> {
  factory _$$SpecialFrontImplCopyWith(_$SpecialFrontImpl value, $Res Function(_$SpecialFrontImpl) then) = __$$SpecialFrontImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int special_front_id, String front});
}

/// @nodoc
class __$$SpecialFrontImplCopyWithImpl<$Res> extends _$SpecialFrontCopyWithImpl<$Res, _$SpecialFrontImpl> implements _$$SpecialFrontImplCopyWith<$Res> {
  __$$SpecialFrontImplCopyWithImpl(_$SpecialFrontImpl _value, $Res Function(_$SpecialFrontImpl) _then) : super(_value, _then);

  /// Create a copy of SpecialFront
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? special_front_id = null,
    Object? front = null,
  }) {
    return _then(_$SpecialFrontImpl(
      special_front_id: null == special_front_id
          ? _value.special_front_id
          : special_front_id // ignore: cast_nullable_to_non_nullable
              as int,
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecialFrontImpl implements _SpecialFront {
  const _$SpecialFrontImpl({required this.special_front_id, required this.front});

  factory _$SpecialFrontImpl.fromJson(Map<String, dynamic> json) => _$$SpecialFrontImplFromJson(json);

  @override
  final int special_front_id;
  @override
  final String front;

  @override
  String toString() {
    return 'SpecialFront(special_front_id: $special_front_id, front: $front)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SpecialFrontImpl && (identical(other.special_front_id, special_front_id) || other.special_front_id == special_front_id) && (identical(other.front, front) || other.front == front));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, special_front_id, front);

  /// Create a copy of SpecialFront
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialFrontImplCopyWith<_$SpecialFrontImpl> get copyWith => __$$SpecialFrontImplCopyWithImpl<_$SpecialFrontImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialFrontImplToJson(
      this,
    );
  }
}

abstract class _SpecialFront implements SpecialFront {
  const factory _SpecialFront({required final int special_front_id, required final String front}) = _$SpecialFrontImpl;

  factory _SpecialFront.fromJson(Map<String, dynamic> json) = _$SpecialFrontImpl.fromJson;

  @override
  int get special_front_id;
  @override
  String get front;

  /// Create a copy of SpecialFront
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecialFrontImplCopyWith<_$SpecialFrontImpl> get copyWith => throw _privateConstructorUsedError;
}

PlatesFilter _$PlatesFilterFromJson(Map<String, dynamic> json) {
  return _PlatesFilter.fromJson(json);
}

/// @nodoc
mixin _$PlatesFilter {
  int get plates_id => throw _privateConstructorUsedError;
  int get users_id => throw _privateConstructorUsedError;
  String get pattern => throw _privateConstructorUsedError;
  int get plates_type_id => throw _privateConstructorUsedError;
  int get province_id => throw _privateConstructorUsedError;
  int get vehicle_type_id => throw _privateConstructorUsedError;
  String get search_text => throw _privateConstructorUsedError;
  int get search_text_pattern_id => throw _privateConstructorUsedError;
  int get search_text_front_number => throw _privateConstructorUsedError;
  String get search_text_front_text => throw _privateConstructorUsedError;
  int get search_text_back_number => throw _privateConstructorUsedError;
  int get back_number => throw _privateConstructorUsedError;
  int get price_under => throw _privateConstructorUsedError;
  String get sort_by => throw _privateConstructorUsedError;
  List<int> get plates_type_id_list => throw _privateConstructorUsedError;
  List<int> get province_id_list => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  /// Serializes this PlatesFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlatesFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlatesFilterCopyWith<PlatesFilter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatesFilterCopyWith<$Res> {
  factory $PlatesFilterCopyWith(PlatesFilter value, $Res Function(PlatesFilter) then) = _$PlatesFilterCopyWithImpl<$Res, PlatesFilter>;
  @useResult
  $Res call({int plates_id, int users_id, String pattern, int plates_type_id, int province_id, int vehicle_type_id, String search_text, int search_text_pattern_id, int search_text_front_number, String search_text_front_text, int search_text_back_number, int back_number, int price_under, String sort_by, List<int> plates_type_id_list, List<int> province_id_list, int limit, int offset});
}

/// @nodoc
class _$PlatesFilterCopyWithImpl<$Res, $Val extends PlatesFilter> implements $PlatesFilterCopyWith<$Res> {
  _$PlatesFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlatesFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plates_id = null,
    Object? users_id = null,
    Object? pattern = null,
    Object? plates_type_id = null,
    Object? province_id = null,
    Object? vehicle_type_id = null,
    Object? search_text = null,
    Object? search_text_pattern_id = null,
    Object? search_text_front_number = null,
    Object? search_text_front_text = null,
    Object? search_text_back_number = null,
    Object? back_number = null,
    Object? price_under = null,
    Object? sort_by = null,
    Object? plates_type_id_list = null,
    Object? province_id_list = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      plates_id: null == plates_id
          ? _value.plates_id
          : plates_id // ignore: cast_nullable_to_non_nullable
              as int,
      users_id: null == users_id
          ? _value.users_id
          : users_id // ignore: cast_nullable_to_non_nullable
              as int,
      pattern: null == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
      plates_type_id: null == plates_type_id
          ? _value.plates_type_id
          : plates_type_id // ignore: cast_nullable_to_non_nullable
              as int,
      province_id: null == province_id
          ? _value.province_id
          : province_id // ignore: cast_nullable_to_non_nullable
              as int,
      vehicle_type_id: null == vehicle_type_id
          ? _value.vehicle_type_id
          : vehicle_type_id // ignore: cast_nullable_to_non_nullable
              as int,
      search_text: null == search_text
          ? _value.search_text
          : search_text // ignore: cast_nullable_to_non_nullable
              as String,
      search_text_pattern_id: null == search_text_pattern_id
          ? _value.search_text_pattern_id
          : search_text_pattern_id // ignore: cast_nullable_to_non_nullable
              as int,
      search_text_front_number: null == search_text_front_number
          ? _value.search_text_front_number
          : search_text_front_number // ignore: cast_nullable_to_non_nullable
              as int,
      search_text_front_text: null == search_text_front_text
          ? _value.search_text_front_text
          : search_text_front_text // ignore: cast_nullable_to_non_nullable
              as String,
      search_text_back_number: null == search_text_back_number
          ? _value.search_text_back_number
          : search_text_back_number // ignore: cast_nullable_to_non_nullable
              as int,
      back_number: null == back_number
          ? _value.back_number
          : back_number // ignore: cast_nullable_to_non_nullable
              as int,
      price_under: null == price_under
          ? _value.price_under
          : price_under // ignore: cast_nullable_to_non_nullable
              as int,
      sort_by: null == sort_by
          ? _value.sort_by
          : sort_by // ignore: cast_nullable_to_non_nullable
              as String,
      plates_type_id_list: null == plates_type_id_list
          ? _value.plates_type_id_list
          : plates_type_id_list // ignore: cast_nullable_to_non_nullable
              as List<int>,
      province_id_list: null == province_id_list
          ? _value.province_id_list
          : province_id_list // ignore: cast_nullable_to_non_nullable
              as List<int>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlatesFilterImplCopyWith<$Res> implements $PlatesFilterCopyWith<$Res> {
  factory _$$PlatesFilterImplCopyWith(_$PlatesFilterImpl value, $Res Function(_$PlatesFilterImpl) then) = __$$PlatesFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int plates_id, int users_id, String pattern, int plates_type_id, int province_id, int vehicle_type_id, String search_text, int search_text_pattern_id, int search_text_front_number, String search_text_front_text, int search_text_back_number, int back_number, int price_under, String sort_by, List<int> plates_type_id_list, List<int> province_id_list, int limit, int offset});
}

/// @nodoc
class __$$PlatesFilterImplCopyWithImpl<$Res> extends _$PlatesFilterCopyWithImpl<$Res, _$PlatesFilterImpl> implements _$$PlatesFilterImplCopyWith<$Res> {
  __$$PlatesFilterImplCopyWithImpl(_$PlatesFilterImpl _value, $Res Function(_$PlatesFilterImpl) _then) : super(_value, _then);

  /// Create a copy of PlatesFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plates_id = null,
    Object? users_id = null,
    Object? pattern = null,
    Object? plates_type_id = null,
    Object? province_id = null,
    Object? vehicle_type_id = null,
    Object? search_text = null,
    Object? search_text_pattern_id = null,
    Object? search_text_front_number = null,
    Object? search_text_front_text = null,
    Object? search_text_back_number = null,
    Object? back_number = null,
    Object? price_under = null,
    Object? sort_by = null,
    Object? plates_type_id_list = null,
    Object? province_id_list = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$PlatesFilterImpl(
      plates_id: null == plates_id
          ? _value.plates_id
          : plates_id // ignore: cast_nullable_to_non_nullable
              as int,
      users_id: null == users_id
          ? _value.users_id
          : users_id // ignore: cast_nullable_to_non_nullable
              as int,
      pattern: null == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
      plates_type_id: null == plates_type_id
          ? _value.plates_type_id
          : plates_type_id // ignore: cast_nullable_to_non_nullable
              as int,
      province_id: null == province_id
          ? _value.province_id
          : province_id // ignore: cast_nullable_to_non_nullable
              as int,
      vehicle_type_id: null == vehicle_type_id
          ? _value.vehicle_type_id
          : vehicle_type_id // ignore: cast_nullable_to_non_nullable
              as int,
      search_text: null == search_text
          ? _value.search_text
          : search_text // ignore: cast_nullable_to_non_nullable
              as String,
      search_text_pattern_id: null == search_text_pattern_id
          ? _value.search_text_pattern_id
          : search_text_pattern_id // ignore: cast_nullable_to_non_nullable
              as int,
      search_text_front_number: null == search_text_front_number
          ? _value.search_text_front_number
          : search_text_front_number // ignore: cast_nullable_to_non_nullable
              as int,
      search_text_front_text: null == search_text_front_text
          ? _value.search_text_front_text
          : search_text_front_text // ignore: cast_nullable_to_non_nullable
              as String,
      search_text_back_number: null == search_text_back_number
          ? _value.search_text_back_number
          : search_text_back_number // ignore: cast_nullable_to_non_nullable
              as int,
      back_number: null == back_number
          ? _value.back_number
          : back_number // ignore: cast_nullable_to_non_nullable
              as int,
      price_under: null == price_under
          ? _value.price_under
          : price_under // ignore: cast_nullable_to_non_nullable
              as int,
      sort_by: null == sort_by
          ? _value.sort_by
          : sort_by // ignore: cast_nullable_to_non_nullable
              as String,
      plates_type_id_list: null == plates_type_id_list
          ? _value._plates_type_id_list
          : plates_type_id_list // ignore: cast_nullable_to_non_nullable
              as List<int>,
      province_id_list: null == province_id_list
          ? _value._province_id_list
          : province_id_list // ignore: cast_nullable_to_non_nullable
              as List<int>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlatesFilterImpl implements _PlatesFilter {
  const _$PlatesFilterImpl(
      {required this.plates_id,
      required this.users_id,
      required this.pattern,
      required this.plates_type_id,
      required this.province_id,
      required this.vehicle_type_id,
      required this.search_text,
      required this.search_text_pattern_id,
      required this.search_text_front_number,
      required this.search_text_front_text,
      required this.search_text_back_number,
      required this.back_number,
      required this.price_under,
      required this.sort_by,
      required final List<int> plates_type_id_list,
      required final List<int> province_id_list,
      required this.limit,
      required this.offset})
      : _plates_type_id_list = plates_type_id_list,
        _province_id_list = province_id_list;

  factory _$PlatesFilterImpl.fromJson(Map<String, dynamic> json) => _$$PlatesFilterImplFromJson(json);

  @override
  final int plates_id;
  @override
  final int users_id;
  @override
  final String pattern;
  @override
  final int plates_type_id;
  @override
  final int province_id;
  @override
  final int vehicle_type_id;
  @override
  final String search_text;
  @override
  final int search_text_pattern_id;
  @override
  final int search_text_front_number;
  @override
  final String search_text_front_text;
  @override
  final int search_text_back_number;
  @override
  final int back_number;
  @override
  final int price_under;
  @override
  final String sort_by;
  final List<int> _plates_type_id_list;
  @override
  List<int> get plates_type_id_list {
    if (_plates_type_id_list is EqualUnmodifiableListView) return _plates_type_id_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plates_type_id_list);
  }

  final List<int> _province_id_list;
  @override
  List<int> get province_id_list {
    if (_province_id_list is EqualUnmodifiableListView) return _province_id_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_province_id_list);
  }

  @override
  final int limit;
  @override
  final int offset;

  @override
  String toString() {
    return 'PlatesFilter(plates_id: $plates_id, users_id: $users_id, pattern: $pattern, plates_type_id: $plates_type_id, province_id: $province_id, vehicle_type_id: $vehicle_type_id, search_text: $search_text, search_text_pattern_id: $search_text_pattern_id, search_text_front_number: $search_text_front_number, search_text_front_text: $search_text_front_text, search_text_back_number: $search_text_back_number, back_number: $back_number, price_under: $price_under, sort_by: $sort_by, plates_type_id_list: $plates_type_id_list, province_id_list: $province_id_list, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatesFilterImpl &&
            (identical(other.plates_id, plates_id) || other.plates_id == plates_id) &&
            (identical(other.users_id, users_id) || other.users_id == users_id) &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            (identical(other.plates_type_id, plates_type_id) || other.plates_type_id == plates_type_id) &&
            (identical(other.province_id, province_id) || other.province_id == province_id) &&
            (identical(other.vehicle_type_id, vehicle_type_id) || other.vehicle_type_id == vehicle_type_id) &&
            (identical(other.search_text, search_text) || other.search_text == search_text) &&
            (identical(other.search_text_pattern_id, search_text_pattern_id) || other.search_text_pattern_id == search_text_pattern_id) &&
            (identical(other.search_text_front_number, search_text_front_number) || other.search_text_front_number == search_text_front_number) &&
            (identical(other.search_text_front_text, search_text_front_text) || other.search_text_front_text == search_text_front_text) &&
            (identical(other.search_text_back_number, search_text_back_number) || other.search_text_back_number == search_text_back_number) &&
            (identical(other.back_number, back_number) || other.back_number == back_number) &&
            (identical(other.price_under, price_under) || other.price_under == price_under) &&
            (identical(other.sort_by, sort_by) || other.sort_by == sort_by) &&
            const DeepCollectionEquality().equals(other._plates_type_id_list, _plates_type_id_list) &&
            const DeepCollectionEquality().equals(other._province_id_list, _province_id_list) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, plates_id, users_id, pattern, plates_type_id, province_id, vehicle_type_id, search_text, search_text_pattern_id, search_text_front_number, search_text_front_text, search_text_back_number, back_number, price_under, sort_by, const DeepCollectionEquality().hash(_plates_type_id_list), const DeepCollectionEquality().hash(_province_id_list), limit, offset);

  /// Create a copy of PlatesFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatesFilterImplCopyWith<_$PlatesFilterImpl> get copyWith => __$$PlatesFilterImplCopyWithImpl<_$PlatesFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlatesFilterImplToJson(
      this,
    );
  }
}

abstract class _PlatesFilter implements PlatesFilter {
  const factory _PlatesFilter(
      {required final int plates_id,
      required final int users_id,
      required final String pattern,
      required final int plates_type_id,
      required final int province_id,
      required final int vehicle_type_id,
      required final String search_text,
      required final int search_text_pattern_id,
      required final int search_text_front_number,
      required final String search_text_front_text,
      required final int search_text_back_number,
      required final int back_number,
      required final int price_under,
      required final String sort_by,
      required final List<int> plates_type_id_list,
      required final List<int> province_id_list,
      required final int limit,
      required final int offset}) = _$PlatesFilterImpl;

  factory _PlatesFilter.fromJson(Map<String, dynamic> json) = _$PlatesFilterImpl.fromJson;

  @override
  int get plates_id;
  @override
  int get users_id;
  @override
  String get pattern;
  @override
  int get plates_type_id;
  @override
  int get province_id;
  @override
  int get vehicle_type_id;
  @override
  String get search_text;
  @override
  int get search_text_pattern_id;
  @override
  int get search_text_front_number;
  @override
  String get search_text_front_text;
  @override
  int get search_text_back_number;
  @override
  int get back_number;
  @override
  int get price_under;
  @override
  String get sort_by;
  @override
  List<int> get plates_type_id_list;
  @override
  List<int> get province_id_list;
  @override
  int get limit;
  @override
  int get offset;

  /// Create a copy of PlatesFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlatesFilterImplCopyWith<_$PlatesFilterImpl> get copyWith => throw _privateConstructorUsedError;
}

PlatesGroup _$PlatesGroupFromJson(Map<String, dynamic> json) {
  return _PlatesGroup.fromJson(json);
}

/// @nodoc
mixin _$PlatesGroup {
  List<PlatesData> get exact => throw _privateConstructorUsedError;
  List<PlatesData> get suggestion => throw _privateConstructorUsedError;

  /// Serializes this PlatesGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlatesGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlatesGroupCopyWith<PlatesGroup> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatesGroupCopyWith<$Res> {
  factory $PlatesGroupCopyWith(PlatesGroup value, $Res Function(PlatesGroup) then) = _$PlatesGroupCopyWithImpl<$Res, PlatesGroup>;
  @useResult
  $Res call({List<PlatesData> exact, List<PlatesData> suggestion});
}

/// @nodoc
class _$PlatesGroupCopyWithImpl<$Res, $Val extends PlatesGroup> implements $PlatesGroupCopyWith<$Res> {
  _$PlatesGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlatesGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exact = null,
    Object? suggestion = null,
  }) {
    return _then(_value.copyWith(
      exact: null == exact
          ? _value.exact
          : exact // ignore: cast_nullable_to_non_nullable
              as List<PlatesData>,
      suggestion: null == suggestion
          ? _value.suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as List<PlatesData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlatesGroupImplCopyWith<$Res> implements $PlatesGroupCopyWith<$Res> {
  factory _$$PlatesGroupImplCopyWith(_$PlatesGroupImpl value, $Res Function(_$PlatesGroupImpl) then) = __$$PlatesGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlatesData> exact, List<PlatesData> suggestion});
}

/// @nodoc
class __$$PlatesGroupImplCopyWithImpl<$Res> extends _$PlatesGroupCopyWithImpl<$Res, _$PlatesGroupImpl> implements _$$PlatesGroupImplCopyWith<$Res> {
  __$$PlatesGroupImplCopyWithImpl(_$PlatesGroupImpl _value, $Res Function(_$PlatesGroupImpl) _then) : super(_value, _then);

  /// Create a copy of PlatesGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exact = null,
    Object? suggestion = null,
  }) {
    return _then(_$PlatesGroupImpl(
      exact: null == exact
          ? _value._exact
          : exact // ignore: cast_nullable_to_non_nullable
              as List<PlatesData>,
      suggestion: null == suggestion
          ? _value._suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as List<PlatesData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlatesGroupImpl implements _PlatesGroup {
  const _$PlatesGroupImpl({required final List<PlatesData> exact, required final List<PlatesData> suggestion})
      : _exact = exact,
        _suggestion = suggestion;

  factory _$PlatesGroupImpl.fromJson(Map<String, dynamic> json) => _$$PlatesGroupImplFromJson(json);

  final List<PlatesData> _exact;
  @override
  List<PlatesData> get exact {
    if (_exact is EqualUnmodifiableListView) return _exact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exact);
  }

  final List<PlatesData> _suggestion;
  @override
  List<PlatesData> get suggestion {
    if (_suggestion is EqualUnmodifiableListView) return _suggestion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestion);
  }

  @override
  String toString() {
    return 'PlatesGroup(exact: $exact, suggestion: $suggestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$PlatesGroupImpl && const DeepCollectionEquality().equals(other._exact, _exact) && const DeepCollectionEquality().equals(other._suggestion, _suggestion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_exact), const DeepCollectionEquality().hash(_suggestion));

  /// Create a copy of PlatesGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatesGroupImplCopyWith<_$PlatesGroupImpl> get copyWith => __$$PlatesGroupImplCopyWithImpl<_$PlatesGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlatesGroupImplToJson(
      this,
    );
  }
}

abstract class _PlatesGroup implements PlatesGroup {
  const factory _PlatesGroup({required final List<PlatesData> exact, required final List<PlatesData> suggestion}) = _$PlatesGroupImpl;

  factory _PlatesGroup.fromJson(Map<String, dynamic> json) = _$PlatesGroupImpl.fromJson;

  @override
  List<PlatesData> get exact;
  @override
  List<PlatesData> get suggestion;

  /// Create a copy of PlatesGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlatesGroupImplCopyWith<_$PlatesGroupImpl> get copyWith => throw _privateConstructorUsedError;
}

PlatesData _$PlatesDataFromJson(Map<String, dynamic> json) {
  return _PlatesData.fromJson(json);
}

/// @nodoc
mixin _$PlatesData {
  int get plates_id => throw _privateConstructorUsedError;
  String get front_text => throw _privateConstructorUsedError;
  int get plates_type_id => throw _privateConstructorUsedError;
  String? get plates_uri => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  String get add_date => throw _privateConstructorUsedError;
  int get front_number => throw _privateConstructorUsedError;
  int get back_number => throw _privateConstructorUsedError;
  int get vehicle_type_id => throw _privateConstructorUsedError;
  int get users_id => throw _privateConstructorUsedError;
  int get special_front_id => throw _privateConstructorUsedError;
  int get province_id => throw _privateConstructorUsedError;
  String? get information => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get profile_uri => throw _privateConstructorUsedError;
  int? get liked_plates_id => throw _privateConstructorUsedError;
  int? get saved_plates_id => throw _privateConstructorUsedError;
  int? get liked_store_id => throw _privateConstructorUsedError;
  int? get saved_store_id => throw _privateConstructorUsedError;
  int get liked_plates_id_count => throw _privateConstructorUsedError;
  int get saved_plates_id_count => throw _privateConstructorUsedError;
  int get reacts_count => throw _privateConstructorUsedError;
  int get rownumber => throw _privateConstructorUsedError;

  /// Serializes this PlatesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlatesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlatesDataCopyWith<PlatesData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatesDataCopyWith<$Res> {
  factory $PlatesDataCopyWith(PlatesData value, $Res Function(PlatesData) then) = _$PlatesDataCopyWithImpl<$Res, PlatesData>;
  @useResult
  $Res call(
      {int plates_id,
      String front_text,
      int plates_type_id,
      String? plates_uri,
      int total,
      String add_date,
      int front_number,
      int back_number,
      int vehicle_type_id,
      int users_id,
      int special_front_id,
      int province_id,
      String? information,
      int price,
      String name,
      String? profile_uri,
      int? liked_plates_id,
      int? saved_plates_id,
      int? liked_store_id,
      int? saved_store_id,
      int liked_plates_id_count,
      int saved_plates_id_count,
      int reacts_count,
      int rownumber});
}

/// @nodoc
class _$PlatesDataCopyWithImpl<$Res, $Val extends PlatesData> implements $PlatesDataCopyWith<$Res> {
  _$PlatesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlatesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plates_id = null,
    Object? front_text = null,
    Object? plates_type_id = null,
    Object? plates_uri = freezed,
    Object? total = null,
    Object? add_date = null,
    Object? front_number = null,
    Object? back_number = null,
    Object? vehicle_type_id = null,
    Object? users_id = null,
    Object? special_front_id = null,
    Object? province_id = null,
    Object? information = freezed,
    Object? price = null,
    Object? name = null,
    Object? profile_uri = freezed,
    Object? liked_plates_id = freezed,
    Object? saved_plates_id = freezed,
    Object? liked_store_id = freezed,
    Object? saved_store_id = freezed,
    Object? liked_plates_id_count = null,
    Object? saved_plates_id_count = null,
    Object? reacts_count = null,
    Object? rownumber = null,
  }) {
    return _then(_value.copyWith(
      plates_id: null == plates_id
          ? _value.plates_id
          : plates_id // ignore: cast_nullable_to_non_nullable
              as int,
      front_text: null == front_text
          ? _value.front_text
          : front_text // ignore: cast_nullable_to_non_nullable
              as String,
      plates_type_id: null == plates_type_id
          ? _value.plates_type_id
          : plates_type_id // ignore: cast_nullable_to_non_nullable
              as int,
      plates_uri: freezed == plates_uri
          ? _value.plates_uri
          : plates_uri // ignore: cast_nullable_to_non_nullable
              as String?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      add_date: null == add_date
          ? _value.add_date
          : add_date // ignore: cast_nullable_to_non_nullable
              as String,
      front_number: null == front_number
          ? _value.front_number
          : front_number // ignore: cast_nullable_to_non_nullable
              as int,
      back_number: null == back_number
          ? _value.back_number
          : back_number // ignore: cast_nullable_to_non_nullable
              as int,
      vehicle_type_id: null == vehicle_type_id
          ? _value.vehicle_type_id
          : vehicle_type_id // ignore: cast_nullable_to_non_nullable
              as int,
      users_id: null == users_id
          ? _value.users_id
          : users_id // ignore: cast_nullable_to_non_nullable
              as int,
      special_front_id: null == special_front_id
          ? _value.special_front_id
          : special_front_id // ignore: cast_nullable_to_non_nullable
              as int,
      province_id: null == province_id
          ? _value.province_id
          : province_id // ignore: cast_nullable_to_non_nullable
              as int,
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profile_uri: freezed == profile_uri
          ? _value.profile_uri
          : profile_uri // ignore: cast_nullable_to_non_nullable
              as String?,
      liked_plates_id: freezed == liked_plates_id
          ? _value.liked_plates_id
          : liked_plates_id // ignore: cast_nullable_to_non_nullable
              as int?,
      saved_plates_id: freezed == saved_plates_id
          ? _value.saved_plates_id
          : saved_plates_id // ignore: cast_nullable_to_non_nullable
              as int?,
      liked_store_id: freezed == liked_store_id
          ? _value.liked_store_id
          : liked_store_id // ignore: cast_nullable_to_non_nullable
              as int?,
      saved_store_id: freezed == saved_store_id
          ? _value.saved_store_id
          : saved_store_id // ignore: cast_nullable_to_non_nullable
              as int?,
      liked_plates_id_count: null == liked_plates_id_count
          ? _value.liked_plates_id_count
          : liked_plates_id_count // ignore: cast_nullable_to_non_nullable
              as int,
      saved_plates_id_count: null == saved_plates_id_count
          ? _value.saved_plates_id_count
          : saved_plates_id_count // ignore: cast_nullable_to_non_nullable
              as int,
      reacts_count: null == reacts_count
          ? _value.reacts_count
          : reacts_count // ignore: cast_nullable_to_non_nullable
              as int,
      rownumber: null == rownumber
          ? _value.rownumber
          : rownumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlatesDataImplCopyWith<$Res> implements $PlatesDataCopyWith<$Res> {
  factory _$$PlatesDataImplCopyWith(_$PlatesDataImpl value, $Res Function(_$PlatesDataImpl) then) = __$$PlatesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int plates_id,
      String front_text,
      int plates_type_id,
      String? plates_uri,
      int total,
      String add_date,
      int front_number,
      int back_number,
      int vehicle_type_id,
      int users_id,
      int special_front_id,
      int province_id,
      String? information,
      int price,
      String name,
      String? profile_uri,
      int? liked_plates_id,
      int? saved_plates_id,
      int? liked_store_id,
      int? saved_store_id,
      int liked_plates_id_count,
      int saved_plates_id_count,
      int reacts_count,
      int rownumber});
}

/// @nodoc
class __$$PlatesDataImplCopyWithImpl<$Res> extends _$PlatesDataCopyWithImpl<$Res, _$PlatesDataImpl> implements _$$PlatesDataImplCopyWith<$Res> {
  __$$PlatesDataImplCopyWithImpl(_$PlatesDataImpl _value, $Res Function(_$PlatesDataImpl) _then) : super(_value, _then);

  /// Create a copy of PlatesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plates_id = null,
    Object? front_text = null,
    Object? plates_type_id = null,
    Object? plates_uri = freezed,
    Object? total = null,
    Object? add_date = null,
    Object? front_number = null,
    Object? back_number = null,
    Object? vehicle_type_id = null,
    Object? users_id = null,
    Object? special_front_id = null,
    Object? province_id = null,
    Object? information = freezed,
    Object? price = null,
    Object? name = null,
    Object? profile_uri = freezed,
    Object? liked_plates_id = freezed,
    Object? saved_plates_id = freezed,
    Object? liked_store_id = freezed,
    Object? saved_store_id = freezed,
    Object? liked_plates_id_count = null,
    Object? saved_plates_id_count = null,
    Object? reacts_count = null,
    Object? rownumber = null,
  }) {
    return _then(_$PlatesDataImpl(
      plates_id: null == plates_id
          ? _value.plates_id
          : plates_id // ignore: cast_nullable_to_non_nullable
              as int,
      front_text: null == front_text
          ? _value.front_text
          : front_text // ignore: cast_nullable_to_non_nullable
              as String,
      plates_type_id: null == plates_type_id
          ? _value.plates_type_id
          : plates_type_id // ignore: cast_nullable_to_non_nullable
              as int,
      plates_uri: freezed == plates_uri
          ? _value.plates_uri
          : plates_uri // ignore: cast_nullable_to_non_nullable
              as String?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      add_date: null == add_date
          ? _value.add_date
          : add_date // ignore: cast_nullable_to_non_nullable
              as String,
      front_number: null == front_number
          ? _value.front_number
          : front_number // ignore: cast_nullable_to_non_nullable
              as int,
      back_number: null == back_number
          ? _value.back_number
          : back_number // ignore: cast_nullable_to_non_nullable
              as int,
      vehicle_type_id: null == vehicle_type_id
          ? _value.vehicle_type_id
          : vehicle_type_id // ignore: cast_nullable_to_non_nullable
              as int,
      users_id: null == users_id
          ? _value.users_id
          : users_id // ignore: cast_nullable_to_non_nullable
              as int,
      special_front_id: null == special_front_id
          ? _value.special_front_id
          : special_front_id // ignore: cast_nullable_to_non_nullable
              as int,
      province_id: null == province_id
          ? _value.province_id
          : province_id // ignore: cast_nullable_to_non_nullable
              as int,
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profile_uri: freezed == profile_uri
          ? _value.profile_uri
          : profile_uri // ignore: cast_nullable_to_non_nullable
              as String?,
      liked_plates_id: freezed == liked_plates_id
          ? _value.liked_plates_id
          : liked_plates_id // ignore: cast_nullable_to_non_nullable
              as int?,
      saved_plates_id: freezed == saved_plates_id
          ? _value.saved_plates_id
          : saved_plates_id // ignore: cast_nullable_to_non_nullable
              as int?,
      liked_store_id: freezed == liked_store_id
          ? _value.liked_store_id
          : liked_store_id // ignore: cast_nullable_to_non_nullable
              as int?,
      saved_store_id: freezed == saved_store_id
          ? _value.saved_store_id
          : saved_store_id // ignore: cast_nullable_to_non_nullable
              as int?,
      liked_plates_id_count: null == liked_plates_id_count
          ? _value.liked_plates_id_count
          : liked_plates_id_count // ignore: cast_nullable_to_non_nullable
              as int,
      saved_plates_id_count: null == saved_plates_id_count
          ? _value.saved_plates_id_count
          : saved_plates_id_count // ignore: cast_nullable_to_non_nullable
              as int,
      reacts_count: null == reacts_count
          ? _value.reacts_count
          : reacts_count // ignore: cast_nullable_to_non_nullable
              as int,
      rownumber: null == rownumber
          ? _value.rownumber
          : rownumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlatesDataImpl implements _PlatesData {
  const _$PlatesDataImpl(
      {required this.plates_id,
      required this.front_text,
      required this.plates_type_id,
      required this.plates_uri,
      required this.total,
      required this.add_date,
      required this.front_number,
      required this.back_number,
      required this.vehicle_type_id,
      required this.users_id,
      required this.special_front_id,
      required this.province_id,
      required this.information,
      required this.price,
      required this.name,
      required this.profile_uri,
      required this.liked_plates_id,
      required this.saved_plates_id,
      required this.liked_store_id,
      required this.saved_store_id,
      required this.liked_plates_id_count,
      required this.saved_plates_id_count,
      required this.reacts_count,
      required this.rownumber});

  factory _$PlatesDataImpl.fromJson(Map<String, dynamic> json) => _$$PlatesDataImplFromJson(json);

  @override
  final int plates_id;
  @override
  final String front_text;
  @override
  final int plates_type_id;
  @override
  final String? plates_uri;
  @override
  final int total;
  @override
  final String add_date;
  @override
  final int front_number;
  @override
  final int back_number;
  @override
  final int vehicle_type_id;
  @override
  final int users_id;
  @override
  final int special_front_id;
  @override
  final int province_id;
  @override
  final String? information;
  @override
  final int price;
  @override
  final String name;
  @override
  final String? profile_uri;
  @override
  final int? liked_plates_id;
  @override
  final int? saved_plates_id;
  @override
  final int? liked_store_id;
  @override
  final int? saved_store_id;
  @override
  final int liked_plates_id_count;
  @override
  final int saved_plates_id_count;
  @override
  final int reacts_count;
  @override
  final int rownumber;

  @override
  String toString() {
    return 'PlatesData(plates_id: $plates_id, front_text: $front_text, plates_type_id: $plates_type_id, plates_uri: $plates_uri, total: $total, add_date: $add_date, front_number: $front_number, back_number: $back_number, vehicle_type_id: $vehicle_type_id, users_id: $users_id, special_front_id: $special_front_id, province_id: $province_id, information: $information, price: $price, name: $name, profile_uri: $profile_uri, liked_plates_id: $liked_plates_id, saved_plates_id: $saved_plates_id, liked_store_id: $liked_store_id, saved_store_id: $saved_store_id, liked_plates_id_count: $liked_plates_id_count, saved_plates_id_count: $saved_plates_id_count, reacts_count: $reacts_count, rownumber: $rownumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatesDataImpl &&
            (identical(other.plates_id, plates_id) || other.plates_id == plates_id) &&
            (identical(other.front_text, front_text) || other.front_text == front_text) &&
            (identical(other.plates_type_id, plates_type_id) || other.plates_type_id == plates_type_id) &&
            (identical(other.plates_uri, plates_uri) || other.plates_uri == plates_uri) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.add_date, add_date) || other.add_date == add_date) &&
            (identical(other.front_number, front_number) || other.front_number == front_number) &&
            (identical(other.back_number, back_number) || other.back_number == back_number) &&
            (identical(other.vehicle_type_id, vehicle_type_id) || other.vehicle_type_id == vehicle_type_id) &&
            (identical(other.users_id, users_id) || other.users_id == users_id) &&
            (identical(other.special_front_id, special_front_id) || other.special_front_id == special_front_id) &&
            (identical(other.province_id, province_id) || other.province_id == province_id) &&
            (identical(other.information, information) || other.information == information) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profile_uri, profile_uri) || other.profile_uri == profile_uri) &&
            (identical(other.liked_plates_id, liked_plates_id) || other.liked_plates_id == liked_plates_id) &&
            (identical(other.saved_plates_id, saved_plates_id) || other.saved_plates_id == saved_plates_id) &&
            (identical(other.liked_store_id, liked_store_id) || other.liked_store_id == liked_store_id) &&
            (identical(other.saved_store_id, saved_store_id) || other.saved_store_id == saved_store_id) &&
            (identical(other.liked_plates_id_count, liked_plates_id_count) || other.liked_plates_id_count == liked_plates_id_count) &&
            (identical(other.saved_plates_id_count, saved_plates_id_count) || other.saved_plates_id_count == saved_plates_id_count) &&
            (identical(other.reacts_count, reacts_count) || other.reacts_count == reacts_count) &&
            (identical(other.rownumber, rownumber) || other.rownumber == rownumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([runtimeType, plates_id, front_text, plates_type_id, plates_uri, total, add_date, front_number, back_number, vehicle_type_id, users_id, special_front_id, province_id, information, price, name, profile_uri, liked_plates_id, saved_plates_id, liked_store_id, saved_store_id, liked_plates_id_count, saved_plates_id_count, reacts_count, rownumber]);

  /// Create a copy of PlatesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatesDataImplCopyWith<_$PlatesDataImpl> get copyWith => __$$PlatesDataImplCopyWithImpl<_$PlatesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlatesDataImplToJson(
      this,
    );
  }
}

abstract class _PlatesData implements PlatesData {
  const factory _PlatesData(
      {required final int plates_id,
      required final String front_text,
      required final int plates_type_id,
      required final String? plates_uri,
      required final int total,
      required final String add_date,
      required final int front_number,
      required final int back_number,
      required final int vehicle_type_id,
      required final int users_id,
      required final int special_front_id,
      required final int province_id,
      required final String? information,
      required final int price,
      required final String name,
      required final String? profile_uri,
      required final int? liked_plates_id,
      required final int? saved_plates_id,
      required final int? liked_store_id,
      required final int? saved_store_id,
      required final int liked_plates_id_count,
      required final int saved_plates_id_count,
      required final int reacts_count,
      required final int rownumber}) = _$PlatesDataImpl;

  factory _PlatesData.fromJson(Map<String, dynamic> json) = _$PlatesDataImpl.fromJson;

  @override
  int get plates_id;
  @override
  String get front_text;
  @override
  int get plates_type_id;
  @override
  String? get plates_uri;
  @override
  int get total;
  @override
  String get add_date;
  @override
  int get front_number;
  @override
  int get back_number;
  @override
  int get vehicle_type_id;
  @override
  int get users_id;
  @override
  int get special_front_id;
  @override
  int get province_id;
  @override
  String? get information;
  @override
  int get price;
  @override
  String get name;
  @override
  String? get profile_uri;
  @override
  int? get liked_plates_id;
  @override
  int? get saved_plates_id;
  @override
  int? get liked_store_id;
  @override
  int? get saved_store_id;
  @override
  int get liked_plates_id_count;
  @override
  int get saved_plates_id_count;
  @override
  int get reacts_count;
  @override
  int get rownumber;

  /// Create a copy of PlatesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlatesDataImplCopyWith<_$PlatesDataImpl> get copyWith => throw _privateConstructorUsedError;
}

UsersFilter _$UsersFilterFromJson(Map<String, dynamic> json) {
  return _UsersFilter.fromJson(json);
}

/// @nodoc
mixin _$UsersFilter {
  int get users_id => throw _privateConstructorUsedError;
  int get store_id => throw _privateConstructorUsedError;
  String get search_text => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  /// Serializes this UsersFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsersFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsersFilterCopyWith<UsersFilter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersFilterCopyWith<$Res> {
  factory $UsersFilterCopyWith(UsersFilter value, $Res Function(UsersFilter) then) = _$UsersFilterCopyWithImpl<$Res, UsersFilter>;
  @useResult
  $Res call({int users_id, int store_id, String search_text, int limit, int offset});
}

/// @nodoc
class _$UsersFilterCopyWithImpl<$Res, $Val extends UsersFilter> implements $UsersFilterCopyWith<$Res> {
  _$UsersFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsersFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users_id = null,
    Object? store_id = null,
    Object? search_text = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      users_id: null == users_id
          ? _value.users_id
          : users_id // ignore: cast_nullable_to_non_nullable
              as int,
      store_id: null == store_id
          ? _value.store_id
          : store_id // ignore: cast_nullable_to_non_nullable
              as int,
      search_text: null == search_text
          ? _value.search_text
          : search_text // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersFilterImplCopyWith<$Res> implements $UsersFilterCopyWith<$Res> {
  factory _$$UsersFilterImplCopyWith(_$UsersFilterImpl value, $Res Function(_$UsersFilterImpl) then) = __$$UsersFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int users_id, int store_id, String search_text, int limit, int offset});
}

/// @nodoc
class __$$UsersFilterImplCopyWithImpl<$Res> extends _$UsersFilterCopyWithImpl<$Res, _$UsersFilterImpl> implements _$$UsersFilterImplCopyWith<$Res> {
  __$$UsersFilterImplCopyWithImpl(_$UsersFilterImpl _value, $Res Function(_$UsersFilterImpl) _then) : super(_value, _then);

  /// Create a copy of UsersFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users_id = null,
    Object? store_id = null,
    Object? search_text = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$UsersFilterImpl(
      users_id: null == users_id
          ? _value.users_id
          : users_id // ignore: cast_nullable_to_non_nullable
              as int,
      store_id: null == store_id
          ? _value.store_id
          : store_id // ignore: cast_nullable_to_non_nullable
              as int,
      search_text: null == search_text
          ? _value.search_text
          : search_text // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersFilterImpl implements _UsersFilter {
  const _$UsersFilterImpl({required this.users_id, required this.store_id, required this.search_text, required this.limit, required this.offset});

  factory _$UsersFilterImpl.fromJson(Map<String, dynamic> json) => _$$UsersFilterImplFromJson(json);

  @override
  final int users_id;
  @override
  final int store_id;
  @override
  final String search_text;
  @override
  final int limit;
  @override
  final int offset;

  @override
  String toString() {
    return 'UsersFilter(users_id: $users_id, store_id: $store_id, search_text: $search_text, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersFilterImpl &&
            (identical(other.users_id, users_id) || other.users_id == users_id) &&
            (identical(other.store_id, store_id) || other.store_id == store_id) &&
            (identical(other.search_text, search_text) || other.search_text == search_text) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, users_id, store_id, search_text, limit, offset);

  /// Create a copy of UsersFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersFilterImplCopyWith<_$UsersFilterImpl> get copyWith => __$$UsersFilterImplCopyWithImpl<_$UsersFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersFilterImplToJson(
      this,
    );
  }
}

abstract class _UsersFilter implements UsersFilter {
  const factory _UsersFilter({required final int users_id, required final int store_id, required final String search_text, required final int limit, required final int offset}) = _$UsersFilterImpl;

  factory _UsersFilter.fromJson(Map<String, dynamic> json) = _$UsersFilterImpl.fromJson;

  @override
  int get users_id;
  @override
  int get store_id;
  @override
  String get search_text;
  @override
  int get limit;
  @override
  int get offset;

  /// Create a copy of UsersFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersFilterImplCopyWith<_$UsersFilterImpl> get copyWith => throw _privateConstructorUsedError;
}

UsersGroup _$UsersGroupFromJson(Map<String, dynamic> json) {
  return _UsersGroup.fromJson(json);
}

/// @nodoc
mixin _$UsersGroup {
  List<UsersData> get exact => throw _privateConstructorUsedError;

  /// Serializes this UsersGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsersGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsersGroupCopyWith<UsersGroup> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersGroupCopyWith<$Res> {
  factory $UsersGroupCopyWith(UsersGroup value, $Res Function(UsersGroup) then) = _$UsersGroupCopyWithImpl<$Res, UsersGroup>;
  @useResult
  $Res call({List<UsersData> exact});
}

/// @nodoc
class _$UsersGroupCopyWithImpl<$Res, $Val extends UsersGroup> implements $UsersGroupCopyWith<$Res> {
  _$UsersGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsersGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exact = null,
  }) {
    return _then(_value.copyWith(
      exact: null == exact
          ? _value.exact
          : exact // ignore: cast_nullable_to_non_nullable
              as List<UsersData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersGroupImplCopyWith<$Res> implements $UsersGroupCopyWith<$Res> {
  factory _$$UsersGroupImplCopyWith(_$UsersGroupImpl value, $Res Function(_$UsersGroupImpl) then) = __$$UsersGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UsersData> exact});
}

/// @nodoc
class __$$UsersGroupImplCopyWithImpl<$Res> extends _$UsersGroupCopyWithImpl<$Res, _$UsersGroupImpl> implements _$$UsersGroupImplCopyWith<$Res> {
  __$$UsersGroupImplCopyWithImpl(_$UsersGroupImpl _value, $Res Function(_$UsersGroupImpl) _then) : super(_value, _then);

  /// Create a copy of UsersGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exact = null,
  }) {
    return _then(_$UsersGroupImpl(
      exact: null == exact
          ? _value._exact
          : exact // ignore: cast_nullable_to_non_nullable
              as List<UsersData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersGroupImpl implements _UsersGroup {
  const _$UsersGroupImpl({required final List<UsersData> exact}) : _exact = exact;

  factory _$UsersGroupImpl.fromJson(Map<String, dynamic> json) => _$$UsersGroupImplFromJson(json);

  final List<UsersData> _exact;
  @override
  List<UsersData> get exact {
    if (_exact is EqualUnmodifiableListView) return _exact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exact);
  }

  @override
  String toString() {
    return 'UsersGroup(exact: $exact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$UsersGroupImpl && const DeepCollectionEquality().equals(other._exact, _exact));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_exact));

  /// Create a copy of UsersGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersGroupImplCopyWith<_$UsersGroupImpl> get copyWith => __$$UsersGroupImplCopyWithImpl<_$UsersGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersGroupImplToJson(
      this,
    );
  }
}

abstract class _UsersGroup implements UsersGroup {
  const factory _UsersGroup({required final List<UsersData> exact}) = _$UsersGroupImpl;

  factory _UsersGroup.fromJson(Map<String, dynamic> json) = _$UsersGroupImpl.fromJson;

  @override
  List<UsersData> get exact;

  /// Create a copy of UsersGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersGroupImplCopyWith<_$UsersGroupImpl> get copyWith => throw _privateConstructorUsedError;
}

UsersData _$UsersDataFromJson(Map<String, dynamic> json) {
  return _UsersData.fromJson(json);
}

/// @nodoc
mixin _$UsersData {
  int get users_id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get created_date => throw _privateConstructorUsedError;
  String? get profile_uri => throw _privateConstructorUsedError;
  String? get cover_uri => throw _privateConstructorUsedError;
  String? get information => throw _privateConstructorUsedError;
  int? get liked_store_id => throw _privateConstructorUsedError;
  int? get saved_store_id => throw _privateConstructorUsedError;
  int get liked_store_id_count => throw _privateConstructorUsedError;
  int get saved_store_id_count => throw _privateConstructorUsedError;
  int get reacts_count => throw _privateConstructorUsedError;
  int get total_assets => throw _privateConstructorUsedError;
  int get plates_count => throw _privateConstructorUsedError;
  int? get average_score => throw _privateConstructorUsedError;

  /// Serializes this UsersData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsersData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsersDataCopyWith<UsersData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersDataCopyWith<$Res> {
  factory $UsersDataCopyWith(UsersData value, $Res Function(UsersData) then) = _$UsersDataCopyWithImpl<$Res, UsersData>;
  @useResult
  $Res call({int users_id, String name, String created_date, String? profile_uri, String? cover_uri, String? information, int? liked_store_id, int? saved_store_id, int liked_store_id_count, int saved_store_id_count, int reacts_count, int total_assets, int plates_count, int? average_score});
}

/// @nodoc
class _$UsersDataCopyWithImpl<$Res, $Val extends UsersData> implements $UsersDataCopyWith<$Res> {
  _$UsersDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsersData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users_id = null,
    Object? name = null,
    Object? created_date = null,
    Object? profile_uri = freezed,
    Object? cover_uri = freezed,
    Object? information = freezed,
    Object? liked_store_id = freezed,
    Object? saved_store_id = freezed,
    Object? liked_store_id_count = null,
    Object? saved_store_id_count = null,
    Object? reacts_count = null,
    Object? total_assets = null,
    Object? plates_count = null,
    Object? average_score = freezed,
  }) {
    return _then(_value.copyWith(
      users_id: null == users_id
          ? _value.users_id
          : users_id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      created_date: null == created_date
          ? _value.created_date
          : created_date // ignore: cast_nullable_to_non_nullable
              as String,
      profile_uri: freezed == profile_uri
          ? _value.profile_uri
          : profile_uri // ignore: cast_nullable_to_non_nullable
              as String?,
      cover_uri: freezed == cover_uri
          ? _value.cover_uri
          : cover_uri // ignore: cast_nullable_to_non_nullable
              as String?,
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
      liked_store_id: freezed == liked_store_id
          ? _value.liked_store_id
          : liked_store_id // ignore: cast_nullable_to_non_nullable
              as int?,
      saved_store_id: freezed == saved_store_id
          ? _value.saved_store_id
          : saved_store_id // ignore: cast_nullable_to_non_nullable
              as int?,
      liked_store_id_count: null == liked_store_id_count
          ? _value.liked_store_id_count
          : liked_store_id_count // ignore: cast_nullable_to_non_nullable
              as int,
      saved_store_id_count: null == saved_store_id_count
          ? _value.saved_store_id_count
          : saved_store_id_count // ignore: cast_nullable_to_non_nullable
              as int,
      reacts_count: null == reacts_count
          ? _value.reacts_count
          : reacts_count // ignore: cast_nullable_to_non_nullable
              as int,
      total_assets: null == total_assets
          ? _value.total_assets
          : total_assets // ignore: cast_nullable_to_non_nullable
              as int,
      plates_count: null == plates_count
          ? _value.plates_count
          : plates_count // ignore: cast_nullable_to_non_nullable
              as int,
      average_score: freezed == average_score
          ? _value.average_score
          : average_score // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersDataImplCopyWith<$Res> implements $UsersDataCopyWith<$Res> {
  factory _$$UsersDataImplCopyWith(_$UsersDataImpl value, $Res Function(_$UsersDataImpl) then) = __$$UsersDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int users_id, String name, String created_date, String? profile_uri, String? cover_uri, String? information, int? liked_store_id, int? saved_store_id, int liked_store_id_count, int saved_store_id_count, int reacts_count, int total_assets, int plates_count, int? average_score});
}

/// @nodoc
class __$$UsersDataImplCopyWithImpl<$Res> extends _$UsersDataCopyWithImpl<$Res, _$UsersDataImpl> implements _$$UsersDataImplCopyWith<$Res> {
  __$$UsersDataImplCopyWithImpl(_$UsersDataImpl _value, $Res Function(_$UsersDataImpl) _then) : super(_value, _then);

  /// Create a copy of UsersData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users_id = null,
    Object? name = null,
    Object? created_date = null,
    Object? profile_uri = freezed,
    Object? cover_uri = freezed,
    Object? information = freezed,
    Object? liked_store_id = freezed,
    Object? saved_store_id = freezed,
    Object? liked_store_id_count = null,
    Object? saved_store_id_count = null,
    Object? reacts_count = null,
    Object? total_assets = null,
    Object? plates_count = null,
    Object? average_score = freezed,
  }) {
    return _then(_$UsersDataImpl(
      users_id: null == users_id
          ? _value.users_id
          : users_id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      created_date: null == created_date
          ? _value.created_date
          : created_date // ignore: cast_nullable_to_non_nullable
              as String,
      profile_uri: freezed == profile_uri
          ? _value.profile_uri
          : profile_uri // ignore: cast_nullable_to_non_nullable
              as String?,
      cover_uri: freezed == cover_uri
          ? _value.cover_uri
          : cover_uri // ignore: cast_nullable_to_non_nullable
              as String?,
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
      liked_store_id: freezed == liked_store_id
          ? _value.liked_store_id
          : liked_store_id // ignore: cast_nullable_to_non_nullable
              as int?,
      saved_store_id: freezed == saved_store_id
          ? _value.saved_store_id
          : saved_store_id // ignore: cast_nullable_to_non_nullable
              as int?,
      liked_store_id_count: null == liked_store_id_count
          ? _value.liked_store_id_count
          : liked_store_id_count // ignore: cast_nullable_to_non_nullable
              as int,
      saved_store_id_count: null == saved_store_id_count
          ? _value.saved_store_id_count
          : saved_store_id_count // ignore: cast_nullable_to_non_nullable
              as int,
      reacts_count: null == reacts_count
          ? _value.reacts_count
          : reacts_count // ignore: cast_nullable_to_non_nullable
              as int,
      total_assets: null == total_assets
          ? _value.total_assets
          : total_assets // ignore: cast_nullable_to_non_nullable
              as int,
      plates_count: null == plates_count
          ? _value.plates_count
          : plates_count // ignore: cast_nullable_to_non_nullable
              as int,
      average_score: freezed == average_score
          ? _value.average_score
          : average_score // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersDataImpl implements _UsersData {
  const _$UsersDataImpl(
      {required this.users_id,
      required this.name,
      required this.created_date,
      required this.profile_uri,
      required this.cover_uri,
      required this.information,
      required this.liked_store_id,
      required this.saved_store_id,
      required this.liked_store_id_count,
      required this.saved_store_id_count,
      required this.reacts_count,
      required this.total_assets,
      required this.plates_count,
      required this.average_score});

  factory _$UsersDataImpl.fromJson(Map<String, dynamic> json) => _$$UsersDataImplFromJson(json);

  @override
  final int users_id;
  @override
  final String name;
  @override
  final String created_date;
  @override
  final String? profile_uri;
  @override
  final String? cover_uri;
  @override
  final String? information;
  @override
  final int? liked_store_id;
  @override
  final int? saved_store_id;
  @override
  final int liked_store_id_count;
  @override
  final int saved_store_id_count;
  @override
  final int reacts_count;
  @override
  final int total_assets;
  @override
  final int plates_count;
  @override
  final int? average_score;

  @override
  String toString() {
    return 'UsersData(users_id: $users_id, name: $name, created_date: $created_date, profile_uri: $profile_uri, cover_uri: $cover_uri, information: $information, liked_store_id: $liked_store_id, saved_store_id: $saved_store_id, liked_store_id_count: $liked_store_id_count, saved_store_id_count: $saved_store_id_count, reacts_count: $reacts_count, total_assets: $total_assets, plates_count: $plates_count, average_score: $average_score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersDataImpl &&
            (identical(other.users_id, users_id) || other.users_id == users_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.created_date, created_date) || other.created_date == created_date) &&
            (identical(other.profile_uri, profile_uri) || other.profile_uri == profile_uri) &&
            (identical(other.cover_uri, cover_uri) || other.cover_uri == cover_uri) &&
            (identical(other.information, information) || other.information == information) &&
            (identical(other.liked_store_id, liked_store_id) || other.liked_store_id == liked_store_id) &&
            (identical(other.saved_store_id, saved_store_id) || other.saved_store_id == saved_store_id) &&
            (identical(other.liked_store_id_count, liked_store_id_count) || other.liked_store_id_count == liked_store_id_count) &&
            (identical(other.saved_store_id_count, saved_store_id_count) || other.saved_store_id_count == saved_store_id_count) &&
            (identical(other.reacts_count, reacts_count) || other.reacts_count == reacts_count) &&
            (identical(other.total_assets, total_assets) || other.total_assets == total_assets) &&
            (identical(other.plates_count, plates_count) || other.plates_count == plates_count) &&
            (identical(other.average_score, average_score) || other.average_score == average_score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, users_id, name, created_date, profile_uri, cover_uri, information, liked_store_id, saved_store_id, liked_store_id_count, saved_store_id_count, reacts_count, total_assets, plates_count, average_score);

  /// Create a copy of UsersData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersDataImplCopyWith<_$UsersDataImpl> get copyWith => __$$UsersDataImplCopyWithImpl<_$UsersDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersDataImplToJson(
      this,
    );
  }
}

abstract class _UsersData implements UsersData {
  const factory _UsersData(
      {required final int users_id,
      required final String name,
      required final String created_date,
      required final String? profile_uri,
      required final String? cover_uri,
      required final String? information,
      required final int? liked_store_id,
      required final int? saved_store_id,
      required final int liked_store_id_count,
      required final int saved_store_id_count,
      required final int reacts_count,
      required final int total_assets,
      required final int plates_count,
      required final int? average_score}) = _$UsersDataImpl;

  factory _UsersData.fromJson(Map<String, dynamic> json) = _$UsersDataImpl.fromJson;

  @override
  int get users_id;
  @override
  String get name;
  @override
  String get created_date;
  @override
  String? get profile_uri;
  @override
  String? get cover_uri;
  @override
  String? get information;
  @override
  int? get liked_store_id;
  @override
  int? get saved_store_id;
  @override
  int get liked_store_id_count;
  @override
  int get saved_store_id_count;
  @override
  int get reacts_count;
  @override
  int get total_assets;
  @override
  int get plates_count;
  @override
  int? get average_score;

  /// Create a copy of UsersData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersDataImplCopyWith<_$UsersDataImpl> get copyWith => throw _privateConstructorUsedError;
}
