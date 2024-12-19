// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:io';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
import '../initialize.dart';
import '../model/models.dart';
import 'authentication_providers.dart';

part 'profile_providers.g.dart';

@riverpod
Future<UnwrapResponse<Profile>> fetchProfile(Ref ref) async {
  final credential = await ref.read(credentialProvider.future);
  final access_token = credential['access_token'];
  final users_id = credential['users_id'];
  if (access_token != null && users_id != null) {
    final Uri uri = Uri(
      scheme: 'http',
      host: host,
      port: 8700,
      path: '/fetch_profile',
    );
    final response = await http.post(
      uri,
      headers: <String, String>{'Content-Type': 'application/json; charset=utf-8', HttpHeaders.authorizationHeader: 'Bearer $access_token'},
      body: jsonEncode(Authentication(
        verification_id: nullAliasInt,
        reference: nullAliasInt,
        code: nullAliasInt,
        email: nullAliasString,
        password: nullAliasString,
        access_token: nullAliasString,
        refresh_token: nullAliasString,
        users_id: int.parse(users_id),
      ).toJson()),
    );
    if (response.statusCode == 200) {
      final Profile profile = Profile.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
      return UnwrapResponse<Profile>(
        statusCode: response.statusCode,
        model: profile,
      );
    } else {
      return UnwrapResponse<Profile>(
        statusCode: response.statusCode,
        model: const Profile(
          name: nullAliasString,
          email: nullAliasString,
          profile_uri: nullAliasString,
          cover_uri: nullAliasString,
          information: nullAliasString,
        ),
      );
    }
  } else {
    return const UnwrapResponse<Profile>(
      statusCode: preconditionRequired,
      model: Profile(
        name: nullAliasString,
        email: nullAliasString,
        profile_uri: nullAliasString,
        cover_uri: nullAliasString,
        information: nullAliasString,
      ),
    );
  }
}

@riverpod
class EditName extends _$EditName {
  @override
  Future<int> build() async {
    return nullAliasInt;
  }

  Future<void> fetch(String name) async {
    final credential = await ref.read(credentialProvider.future);
    final access_token = credential['access_token'];
    final users_id = credential['users_id'];
    if (access_token != null && users_id != null) {
      final Uri uri = Uri(
        scheme: 'http',
        host: host,
        port: 8700,
        path: '/edit_name',
        queryParameters: {'name': name},
      );
      final response = await http.put(
        uri,
        headers: <String, String>{'Content-Type': 'application/json; charset=utf-8', HttpHeaders.authorizationHeader: 'Bearer $access_token'},
        body: jsonEncode(Authentication(
          verification_id: nullAliasInt,
          reference: nullAliasInt,
          code: nullAliasInt,
          email: nullAliasString,
          password: nullAliasString,
          access_token: nullAliasString,
          refresh_token: nullAliasString,
          users_id: int.parse(users_id),
        ).toJson()),
      );
      if (response.statusCode == 200) {
        ref.invalidate(fetchProfileProvider);
      }
      state = AsyncData(response.statusCode);
    } else {
      state = const AsyncData(preconditionRequired);
    }
  }
}

@riverpod
class EditInformation extends _$EditInformation {
  @override
  Future<int> build() async {
    return nullAliasInt;
  }

  Future<void> fetch(String information) async {
    final credential = await ref.read(credentialProvider.future);
    final access_token = credential['access_token'];
    final users_id = credential['users_id'];
    if (access_token != null && users_id != null) {
      final Uri uri = Uri(
        scheme: 'http',
        host: host,
        port: 8700,
        path: '/edit_information',
        queryParameters: {'information': information},
      );
      final response = await http.put(
        uri,
        headers: <String, String>{'Content-Type': 'application/json; charset=utf-8', HttpHeaders.authorizationHeader: 'Bearer $access_token'},
        body: jsonEncode(Authentication(
          verification_id: nullAliasInt,
          reference: nullAliasInt,
          code: nullAliasInt,
          email: nullAliasString,
          password: nullAliasString,
          access_token: nullAliasString,
          refresh_token: nullAliasString,
          users_id: int.parse(users_id),
        ).toJson()),
      );
      if (response.statusCode == 200) {
        ref.invalidate(fetchProfileProvider);
      }
      state = AsyncData(response.statusCode);
    } else {
      state = const AsyncData(preconditionRequired);
    }
  }
}

@riverpod
class UpdatePhotos extends _$UpdatePhotos {
  @override
  Future<int> build() async {
    return nullAliasInt;
  }

  Future<void> upload(String key) async {}

  Future<void> delete(String key) async {}
}
