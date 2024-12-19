// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import '../initialize.dart';

part 'models.freezed.dart';
part 'models.g.dart';

class UnwrapResponse<M extends Object> {
  const UnwrapResponse({required this.statusCode, required this.model});
  final int statusCode;
  final M model;
}

const UnwrapResponse<Authentication> unwrapResponse = UnwrapResponse<Authentication>(
  statusCode: nullAliasInt,
  model: Authentication(
    verification_id: nullAliasInt,
    reference: nullAliasInt,
    code: nullAliasInt,
    email: nullAliasString,
    password: nullAliasString,
    access_token: nullAliasString,
    refresh_token: nullAliasString,
    users_id: nullAliasInt,
  ),
);

@freezed
class Authentication with _$Authentication {
  const factory Authentication({
    required int verification_id,
    required int reference,
    required int code,
    required String email,
    required String password,
    required String access_token,
    required String refresh_token,
    required int users_id,
  }) = _Authentication;
  factory Authentication.fromJson(Map<String, Object?> json) => _$AuthenticationFromJson(json);
}

@freezed
class Profile with _$Profile {
  const factory Profile({
    required String name,
    required String email,
    required String? profile_uri,
    required String? cover_uri,
    required String? information,
  }) = _Profile;
  factory Profile.fromJson(Map<String, Object?> json) => _$ProfileFromJson(json);
}

@freezed
class Plates with _$Plates {
  const factory Plates({
    required int plates_id,
    required String front_text,
    required int plates_type_id,
    required String? plates_uri,
    required bool is_selling,
    required bool is_pin,
    required int total,
    required String add_date,
    required int front_number,
    required int back_number,
    required int vehicle_type_id,
    required int users_id,
    required int special_front_id,
    required int province_id,
    required String? information,
    required int price,
    required bool is_temporary,
  }) = _Plates;
  factory Plates.fromJson(Map<String, Object?> json) => _$PlatesFromJson(json);
}

@freezed
class UniversalId with _$UniversalId {
  const factory UniversalId({
    required int id,
  }) = _UniversalId;
  factory UniversalId.fromJson(Map<String, Object?> json) => _$UniversalIdFromJson(json);
}

@freezed
class ArraySpecialFront with _$ArraySpecialFront {
  const factory ArraySpecialFront({
    required List<SpecialFront> array,
  }) = _ArraySpecialFront;
  factory ArraySpecialFront.fromJson(Map<String, Object?> json) => _$ArraySpecialFrontFromJson(json);
}

@freezed
class SpecialFront with _$SpecialFront {
  const factory SpecialFront({
    required int special_front_id,
    required String front,
  }) = _SpecialFront;
  factory SpecialFront.fromJson(Map<String, Object?> json) => _$SpecialFrontFromJson(json);
}

@freezed
class PlatesFilter with _$PlatesFilter {
  const factory PlatesFilter({
    required int plates_id,
    required int users_id,
    required String pattern,
    required int plates_type_id,
    required int province_id,
    required int vehicle_type_id,
    required String search_text,
    required int search_text_pattern_id,
    required int search_text_front_number,
    required String search_text_front_text,
    required int search_text_back_number,
    required int back_number,
    required int price_under,
    required String sort_by,
    required List<int> plates_type_id_list,
    required List<int> province_id_list,
    required int limit,
    required int offset,
  }) = _PlatesFilter;
  factory PlatesFilter.fromJson(Map<String, Object?> json) => _$PlatesFilterFromJson(json);
}

@freezed
class PlatesGroup with _$PlatesGroup {
  const factory PlatesGroup({
    required List<PlatesData> exact,
    required List<PlatesData> suggestion,
  }) = _PlatesGroup;
  factory PlatesGroup.fromJson(Map<String, Object?> json) => _$PlatesGroupFromJson(json);
}

@freezed
class PlatesData with _$PlatesData {
  const factory PlatesData({
    required int plates_id,
    required String front_text,
    required int plates_type_id,
    required String? plates_uri,
    required int total,
    required String add_date,
    required int front_number,
    required int back_number,
    required int vehicle_type_id,
    required int users_id,
    required int special_front_id,
    required int province_id,
    required String? information,
    required int price,
    required String name,
    required String? profile_uri,
    required int? liked_plates_id,
    required int? saved_plates_id,
    required int? liked_store_id,
    required int? saved_store_id,
    required int liked_plates_id_count,
    required int saved_plates_id_count,
    required int reacts_count,
    required int rownumber,
  }) = _PlatesData;
  factory PlatesData.fromJson(Map<String, Object?> json) => _$PlatesDataFromJson(json);
}

@freezed
class UsersFilter with _$UsersFilter {
  const factory UsersFilter({
    required int users_id,
    required int store_id,
    required String search_text,
    required int limit,
    required int offset,
  }) = _UsersFilter;
  factory UsersFilter.fromJson(Map<String, Object?> json) => _$UsersFilterFromJson(json);
}

@freezed
class UsersGroup with _$UsersGroup {
  const factory UsersGroup({
    required List<UsersData> exact,
  }) = _UsersGroup;
  factory UsersGroup.fromJson(Map<String, Object?> json) => _$UsersGroupFromJson(json);
}

@freezed
class UsersData with _$UsersData {
  const factory UsersData({
    required int users_id,
    required String name,
    required String created_date,
    required String? profile_uri,
    required String? cover_uri,
    required String? information,
    required int? liked_store_id,
    required int? saved_store_id,
    required int liked_store_id_count,
    required int saved_store_id_count,
    required int reacts_count,
    required int total_assets,
    required int plates_count,
    required int? average_score,
  }) = _UsersData;
  factory UsersData.fromJson(Map<String, Object?> json) => _$UsersDataFromJson(json);
}
