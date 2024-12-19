// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:io';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../constants.dart';
import '../initialize.dart';
import '../model/models.dart';
import 'authentication_providers.dart';
import 'settings_providers.dart';
import 'package:http/http.dart' as http;

part 'query_providers.g.dart';

@riverpod
Future<UnwrapResponse<PlatesGroup>> queryPatternDetailsExplore(
  QueryPatternDetailsExploreRef ref,
  String path,
  String pattern,
  int plates_type_id,
  int province_id,
  int vehicle_type_id,
  int limit,
  int offset,
) async {
  final credential = await ref.read(credentialProvider.future);
  final access_token = credential['access_token'];
  final users_id = credential['users_id'];
  if (access_token != null && users_id != null) {
    final int updatePriceUnder = ref.watch(updatePriceUnderProvider);
    final SortBy updateSortBy = ref.watch(updateSortByProvider);
    final Set<String> filterPlatesType = ref.watch(filterPlatesTypeProvider);
    final Set<String> filterProvince = ref.watch(filterProvinceProvider);
    final Uri uri = Uri(
      scheme: 'http',
      host: host,
      port: 8700,
      path: path,
    );
    final response = await http.post(
      uri,
      headers: <String, String>{'Content-Type': 'application/json; charset=utf-8', HttpHeaders.authorizationHeader: 'Bearer $access_token'},
      body: jsonEncode(PlatesFilter(
        plates_id: nullAliasInt,
        users_id: int.parse(users_id),
        pattern: pattern,
        plates_type_id: plates_type_id,
        province_id: province_id,
        vehicle_type_id: vehicle_type_id,
        search_text: nullAliasString,
        search_text_pattern_id: nullAliasInt,
        search_text_front_number: nullAliasInt,
        search_text_front_text: nullAliasString,
        search_text_back_number: nullAliasInt,
        back_number: nullAliasInt,
        price_under: updatePriceUnder,
        sort_by: updateSortBy.name,
        plates_type_id_list: filterPlatesType.map((toElement) => PlatesType.values.byName(toElement).plates_type_id).toList(),
        province_id_list: filterProvince.map((toElement) => Province.values.byName(toElement).province_id).toList(),
        limit: limit,
        offset: offset,
      ).toJson()),
    );
    if (response.statusCode == 200) {
      final PlatesGroup platesGroup = PlatesGroup.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
      return UnwrapResponse(statusCode: response.statusCode, model: platesGroup);
    } else {
      return UnwrapResponse(statusCode: response.statusCode, model: const PlatesGroup(exact: [], suggestion: []));
    }
  } else {
    return const UnwrapResponse(statusCode: preconditionRequired, model: PlatesGroup(exact: [], suggestion: []));
  }
}

@riverpod
class QueryPlatesReacts extends _$QueryPlatesReacts {
  @override
  Future<PlatesData> build(
    int plates_id,
    int? liked_plates_id,
    int? saved_plates_id,
    int? liked_store_id,
    int? saved_store_id,
    int liked_plates_id_count,
    int saved_plates_id_count,
    int reacts_count,
  ) async {
    return PlatesData(
      plates_id: plates_id,
      front_text: nullAliasString,
      plates_type_id: nullAliasInt,
      plates_uri: nullAliasString,
      total: nullAliasInt,
      add_date: nullAliasString,
      front_number: nullAliasInt,
      back_number: nullAliasInt,
      vehicle_type_id: nullAliasInt,
      users_id: nullAliasInt,
      special_front_id: nullAliasInt,
      province_id: nullAliasInt,
      information: nullAliasString,
      price: nullAliasInt,
      name: nullAliasString,
      profile_uri: nullAliasString,
      liked_plates_id: liked_plates_id,
      saved_plates_id: saved_plates_id,
      liked_store_id: liked_store_id,
      saved_store_id: saved_store_id,
      liked_plates_id_count: liked_plates_id_count,
      saved_plates_id_count: saved_plates_id_count,
      reacts_count: reacts_count,
      rownumber: nullAliasInt,
    );
  }

  Future<void> fetch(int plates_id) async {
    final credential = await ref.read(credentialProvider.future);
    final access_token = credential['access_token'];
    final users_id = credential['users_id'];
    if (access_token != null && users_id != null) {
      final Uri uri = Uri(
        scheme: 'http',
        host: host,
        port: 8700,
        path: '/query_plates_info',
      );
      final response = await http.post(
        uri,
        headers: <String, String>{'Content-Type': 'application/json; charset=utf-8', HttpHeaders.authorizationHeader: 'Bearer $access_token'},
        body: jsonEncode(PlatesFilter(
          plates_id: plates_id,
          users_id: int.parse(users_id),
          pattern: nullAliasString,
          plates_type_id: nullAliasInt,
          province_id: nullAliasInt,
          vehicle_type_id: nullAliasInt,
          search_text: nullAliasString,
          search_text_pattern_id: nullAliasInt,
          search_text_front_number: nullAliasInt,
          search_text_front_text: nullAliasString,
          search_text_back_number: nullAliasInt,
          back_number: nullAliasInt,
          price_under: nullAliasInt,
          sort_by: nullAliasString,
          plates_type_id_list: [],
          province_id_list: [],
          limit: nullAliasInt,
          offset: nullAliasInt,
        ).toJson()),
      );
      if (response.statusCode == 200) {
        final PlatesGroup platesGroup = PlatesGroup.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
        state = AsyncData(platesGroup.exact.first);
      }
    }
  }
}

@riverpod
Future<int> addRemoveLikedPlates(AddRemoveLikedPlatesRef ref, int plates_id, bool value) async {
  final credential = await ref.read(credentialProvider.future);
  final access_token = credential['access_token'];
  final users_id = credential['users_id'];
  if (access_token != null && users_id != null) {
    final Uri uri = Uri(
      scheme: 'http',
      host: host,
      port: 8700,
      path: value ? '/add_liked_plates' : '/remove_liked_plates',
    );
    final response = await http.post(
      uri,
      headers: <String, String>{'Content-Type': 'application/json; charset=utf-8', HttpHeaders.authorizationHeader: 'Bearer $access_token'},
      body: jsonEncode(PlatesFilter(
        plates_id: plates_id,
        users_id: int.parse(users_id),
        pattern: nullAliasString,
        plates_type_id: nullAliasInt,
        province_id: nullAliasInt,
        vehicle_type_id: nullAliasInt,
        search_text: nullAliasString,
        search_text_pattern_id: nullAliasInt,
        search_text_front_number: nullAliasInt,
        search_text_front_text: nullAliasString,
        search_text_back_number: nullAliasInt,
        back_number: nullAliasInt,
        price_under: nullAliasInt,
        sort_by: nullAliasString,
        plates_type_id_list: [],
        province_id_list: [],
        limit: nullAliasInt,
        offset: nullAliasInt,
      ).toJson()),
    );
    return response.statusCode;
  } else {
    return preconditionRequired;
  }
}

@riverpod
Future<int> addRemoveSavedPlates(AddRemoveSavedPlatesRef ref, int plates_id, bool value) async {
  final credential = await ref.read(credentialProvider.future);
  final access_token = credential['access_token'];
  final users_id = credential['users_id'];
  if (access_token != null && users_id != null) {
    final Uri uri = Uri(
      scheme: 'http',
      host: host,
      port: 8700,
      path: value ? '/add_saved_plates' : '/remove_saved_plates',
    );
    final response = await http.post(
      uri,
      headers: <String, String>{'Content-Type': 'application/json; charset=utf-8', HttpHeaders.authorizationHeader: 'Bearer $access_token'},
      body: jsonEncode(PlatesFilter(
        plates_id: plates_id,
        users_id: int.parse(users_id),
        pattern: nullAliasString,
        plates_type_id: nullAliasInt,
        province_id: nullAliasInt,
        vehicle_type_id: nullAliasInt,
        search_text: nullAliasString,
        search_text_pattern_id: nullAliasInt,
        search_text_front_number: nullAliasInt,
        search_text_front_text: nullAliasString,
        search_text_back_number: nullAliasInt,
        back_number: nullAliasInt,
        price_under: nullAliasInt,
        sort_by: nullAliasString,
        plates_type_id_list: [],
        province_id_list: [],
        limit: nullAliasInt,
        offset: nullAliasInt,
      ).toJson()),
    );
    return response.statusCode;
  } else {
    return preconditionRequired;
  }
}

@riverpod
Future<int> addRemoveLikedStore(AddRemoveLikedStoreRef ref, int store_id, bool value) async {
  final credential = await ref.read(credentialProvider.future);
  final access_token = credential['access_token'];
  final users_id = credential['users_id'];
  if (access_token != null && users_id != null) {
    final Uri uri = Uri(
      scheme: 'http',
      host: host,
      port: 8700,
      path: value ? '/add_liked_store' : '/remove_liked_store',
    );
    final response = await http.post(
      uri,
      headers: <String, String>{'Content-Type': 'application/json; charset=utf-8', HttpHeaders.authorizationHeader: 'Bearer $access_token'},
      body: jsonEncode(UsersFilter(
        users_id: int.parse(users_id),
        store_id: store_id,
        search_text: nullAliasString,
        limit: nullAliasInt,
        offset: nullAliasInt,
      ).toJson()),
    );
    return response.statusCode;
  } else {
    return preconditionRequired;
  }
}

@riverpod
Future<int> addRemoveSavedStore(AddRemoveSavedStoreRef ref, int store_id, bool value) async {
  final credential = await ref.read(credentialProvider.future);
  final access_token = credential['access_token'];
  final users_id = credential['users_id'];
  if (access_token != null && users_id != null) {
    final Uri uri = Uri(
      scheme: 'http',
      host: host,
      port: 8700,
      path: value ? '/add_saved_store' : '/remove_saved_store',
    );
    final response = await http.post(
      uri,
      headers: <String, String>{'Content-Type': 'application/json; charset=utf-8', HttpHeaders.authorizationHeader: 'Bearer $access_token'},
      body: jsonEncode(UsersFilter(
        users_id: int.parse(users_id),
        store_id: store_id,
        search_text: nullAliasString,
        limit: nullAliasInt,
        offset: nullAliasInt,
      ).toJson()),
    );
    return response.statusCode;
  } else {
    return preconditionRequired;
  }
}

@riverpod
Future<UnwrapResponse<PlatesGroup>> queryPlatesInfo(QueryPlatesInfoRef ref, int plates_id) async {
  final credential = await ref.read(credentialProvider.future);
  final access_token = credential['access_token'];
  final users_id = credential['users_id'];
  if (access_token != null && users_id != null) {
    final Uri uri = Uri(
      scheme: 'http',
      host: host,
      port: 8700,
      path: '/query_plates_info',
    );
    final response = await http.post(
      uri,
      headers: <String, String>{'Content-Type': 'application/json; charset=utf-8', HttpHeaders.authorizationHeader: 'Bearer $access_token'},
      body: jsonEncode(PlatesFilter(
        plates_id: plates_id,
        users_id: int.parse(users_id),
        pattern: nullAliasString,
        plates_type_id: nullAliasInt,
        province_id: nullAliasInt,
        vehicle_type_id: nullAliasInt,
        search_text: nullAliasString,
        search_text_pattern_id: nullAliasInt,
        search_text_front_number: nullAliasInt,
        search_text_front_text: nullAliasString,
        search_text_back_number: nullAliasInt,
        back_number: nullAliasInt,
        price_under: nullAliasInt,
        sort_by: nullAliasString,
        plates_type_id_list: [],
        province_id_list: [],
        limit: nullAliasInt,
        offset: nullAliasInt,
      ).toJson()),
    );
    if (response.statusCode == 200) {
      final PlatesGroup platesGroup = PlatesGroup.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
      return UnwrapResponse(statusCode: response.statusCode, model: platesGroup);
    } else {
      return UnwrapResponse(statusCode: response.statusCode, model: const PlatesGroup(exact: [], suggestion: []));
    }
  } else {
    return const UnwrapResponse(statusCode: preconditionRequired, model: PlatesGroup(exact: [], suggestion: []));
  }
}

@riverpod
Future<UnwrapResponse<PlatesGroup>> querySuggestionBackNumber(
  QuerySuggestionBackNumberRef ref,
  int back_number,
  int limit,
  int offset,
) async {
  final credential = await ref.read(credentialProvider.future);
  final access_token = credential['access_token'];
  final users_id = credential['users_id'];
  if (access_token != null && users_id != null) {
    final int updatePriceUnder = ref.watch(updatePriceUnderProvider);
    final SortBy updateSortBy = ref.watch(updateSortByProvider);
    final Set<String> filterPlatesType = ref.watch(filterPlatesTypeProvider);
    final Set<String> filterProvince = ref.watch(filterProvinceProvider);
    final Uri uri = Uri(
      scheme: 'http',
      host: host,
      port: 8700,
      path: '/query_suggestion_back_number',
    );
    final response = await http.post(
      uri,
      headers: <String, String>{'Content-Type': 'application/json; charset=utf-8', HttpHeaders.authorizationHeader: 'Bearer $access_token'},
      body: jsonEncode(PlatesFilter(
        plates_id: nullAliasInt,
        users_id: int.parse(users_id),
        pattern: nullAliasString,
        plates_type_id: nullAliasInt,
        province_id: nullAliasInt,
        vehicle_type_id: nullAliasInt,
        search_text: nullAliasString,
        search_text_pattern_id: nullAliasInt,
        search_text_front_number: nullAliasInt,
        search_text_front_text: nullAliasString,
        search_text_back_number: nullAliasInt,
        back_number: back_number,
        price_under: updatePriceUnder,
        sort_by: updateSortBy.name,
        plates_type_id_list: filterPlatesType.map((toElement) => PlatesType.values.byName(toElement).plates_type_id).toList(),
        province_id_list: filterProvince.map((toElement) => Province.values.byName(toElement).province_id).toList(),
        limit: limit,
        offset: offset,
      ).toJson()),
    );
    if (response.statusCode == 200) {
      final PlatesGroup platesGroup = PlatesGroup.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
      return UnwrapResponse(statusCode: response.statusCode, model: platesGroup);
    } else {
      return UnwrapResponse(statusCode: response.statusCode, model: const PlatesGroup(exact: [], suggestion: []));
    }
  } else {
    return const UnwrapResponse(statusCode: preconditionRequired, model: PlatesGroup(exact: [], suggestion: []));
  }
}

@riverpod
Future<UnwrapResponse<UsersGroup>> queryUsersInfo(QueryUsersInfoRef ref, int store_id) async {
  final credential = await ref.read(credentialProvider.future);
  final access_token = credential['access_token'];
  final users_id = credential['users_id'];
  if (access_token != null && users_id != null) {
    final Uri uri = Uri(
      scheme: 'http',
      host: host,
      port: 8700,
      path: '/query_users_info',
    );
    final response = await http.post(
      uri,
      headers: <String, String>{'Content-Type': 'application/json; charset=utf-8', HttpHeaders.authorizationHeader: 'Bearer $access_token'},
      body: jsonEncode(UsersFilter(
        users_id: int.parse(users_id),
        store_id: store_id,
        search_text: nullAliasString,
        limit: nullAliasInt,
        offset: nullAliasInt,
      ).toJson()),
    );
    if (response.statusCode == 200) {
      final UsersGroup usersGroup = UsersGroup.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
      return UnwrapResponse(statusCode: response.statusCode, model: usersGroup);
    } else {
      return UnwrapResponse(statusCode: response.statusCode, model: const UsersGroup(exact: []));
    }
  } else {
    return const UnwrapResponse(statusCode: preconditionRequired, model: UsersGroup(exact: []));
  }
}

@riverpod
Future<UnwrapResponse<PlatesGroup>> queryUsersPlates(
  QueryUsersPlatesRef ref,
  String path,
  int store_id,
  int limit,
  int offset,
) async {
  final credential = await ref.read(credentialProvider.future);
  final access_token = credential['access_token'];
  final users_id = credential['users_id'];
  if (access_token != null && users_id != null) {
    final Uri uri = Uri(
      scheme: 'http',
      host: host,
      port: 8700,
      path: path,
    );
    final response = await http.post(
      uri,
      headers: <String, String>{'Content-Type': 'application/json; charset=utf-8', HttpHeaders.authorizationHeader: 'Bearer $access_token'},
      body: jsonEncode(UsersFilter(
        users_id: int.parse(users_id),
        store_id: store_id,
        search_text: nullAliasString,
        limit: limit,
        offset: offset,
      ).toJson()),
    );
    if (response.statusCode == 200) {
      final PlatesGroup platesGroup = PlatesGroup.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
      return UnwrapResponse(statusCode: response.statusCode, model: platesGroup);
    } else {
      return UnwrapResponse(statusCode: response.statusCode, model: const PlatesGroup(exact: [], suggestion: []));
    }
  } else {
    return const UnwrapResponse(statusCode: preconditionRequired, model: PlatesGroup(exact: [], suggestion: []));
  }
}
