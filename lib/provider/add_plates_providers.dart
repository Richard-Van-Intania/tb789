// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
import '../constants.dart';
import '../initialize.dart';
import '../model/models.dart';
import 'authentication_providers.dart';
import 'providers.dart';

part 'add_plates_providers.g.dart';

@Riverpod(keepAlive: true)
Future<ArraySpecialFront> fetchSpecialFront(FetchSpecialFrontRef ref) async {
  final credential = await ref.read(credentialProvider.future);
  final access_token = credential['access_token'];
  if (access_token != null) {
    final Uri uri = Uri(
      scheme: 'http',
      host: host,
      port: 8700,
      path: '/fetch_special_front',
    );
    final response = await http.get(
      uri,
      headers: <String, String>{'Content-Type': 'application/json; charset=utf-8', HttpHeaders.authorizationHeader: 'Bearer $access_token'},
    );
    if (response.statusCode == 200) {
      final ArraySpecialFront arraySpecialFront = ArraySpecialFront.fromJson({'array': jsonDecode(await compute(utf8.decode, response.bodyBytes))});
      return arraySpecialFront;
    } else {
      return const ArraySpecialFront(array: []);
    }
  } else {
    return const ArraySpecialFront(array: []);
  }
}

@riverpod
class SelectPlatesType extends _$SelectPlatesType {
  @override
  PlatesType build() => PlatesType.platesType1;
  void select(PlatesType platesType) => state = platesType;
}

@riverpod
class SelectProvince extends _$SelectProvince {
  @override
  Province? build() => null;
  void select(Province? province) => state = province;
}

@riverpod
class AddPlatesPhoto extends _$AddPlatesPhoto {
  @override
  Uint8List? build() {
    return null;
  }

  Future<void> pickAndCrop(ImageSource source, CropAspectRatio aspectRatio) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: source, imageQuality: 100);
    if (image != null) {
      final CroppedFile? croppedImage = await ImageCropper().cropImage(
        sourcePath: image.path,
        compressQuality: 100,
        aspectRatio: aspectRatio,
        uiSettings: [AndroidUiSettings(activeControlsWidgetColor: const Color(0xff435e91), lockAspectRatio: true), IOSUiSettings(aspectRatioLockEnabled: true)],
      );
      if (croppedImage != null) {
        state = await croppedImage.readAsBytes();
      }
    }
  }

  void delete() {
    state = null;
  }
}

@riverpod
Future<int> addNewPlates(
  AddNewPlatesRef ref,
  String front_text,
  int total,
  int front_number,
  int back_number,
  int special_front_id,
  String? information,
  int price,
  bool is_temporary,
) async {
  final credential = await ref.read(credentialProvider.future);
  final access_token = credential['access_token'];
  final users_id = credential['users_id'];
  final selectProvince = ref.read(selectProvinceProvider);
  final selectPlatesType = ref.read(selectPlatesTypeProvider);
  final addPlatesPhoto = ref.read(addPlatesPhotoProvider);
  if (access_token != null && users_id != null && selectProvince != null) {
    final Uri add_new_plates_uri = Uri(
      scheme: 'http',
      host: host,
      port: 8700,
      path: '/add_new_plates',
    );
    final add_new_plates_res = await http.post(
      add_new_plates_uri,
      headers: <String, String>{'Content-Type': 'application/json; charset=utf-8', HttpHeaders.authorizationHeader: 'Bearer $access_token'},
      body: jsonEncode(Plates(
        plates_id: nullAliasInt,
        front_text: front_text,
        plates_type_id: selectPlatesType.plates_type_id,
        plates_uri: null,
        is_selling: true,
        is_pin: false,
        total: total,
        add_date: nullAliasString,
        front_number: front_number,
        back_number: back_number,
        vehicle_type_id: selectPlatesType.vehicleType.vehicle_type_id,
        users_id: int.parse(users_id),
        special_front_id: special_front_id,
        province_id: selectProvince.province_id,
        information: information,
        price: price,
        is_temporary: is_temporary,
      ).toJson()),
    );
    if (add_new_plates_res.statusCode == 200) {
      if (addPlatesPhoto != null) {
        final String object_key = '$platesKey${uuid.v4()}.jpg';
        final Uri generate_presigned_url_uri = Uri(
          scheme: 'http',
          host: host,
          port: 8700,
          path: '/generate_presigned_url',
          queryParameters: {'object_key': object_key},
        );
        final generate_presigned_url_res = await http.get(
          generate_presigned_url_uri,
          headers: <String, String>{HttpHeaders.authorizationHeader: 'Bearer $access_token'},
        );
        if (generate_presigned_url_res.statusCode == 200) {
          final String presignedUrl = utf8.decode(generate_presigned_url_res.bodyBytes);
          final put_object_res = await http.put(
            Uri.parse(presignedUrl),
            headers: <String, String>{'Content-Type': 'image/jpeg'},
            body: addPlatesPhoto,
          );
          if (put_object_res.statusCode == 200) {
            final String id = UniversalId.fromJson(jsonDecode(utf8.decode(add_new_plates_res.bodyBytes))).id.toString();
            final Uri update_object_uri = Uri(
              scheme: 'http',
              host: host,
              port: 8700,
              path: '/update_object',
              queryParameters: {'id': id, 'object_key': object_key},
            );
            final update_object_res = await http.put(
              update_object_uri,
              headers: <String, String>{HttpHeaders.authorizationHeader: 'Bearer $access_token'},
            );
            if (update_object_res.statusCode != 200) {
              ref.read(displaySnackBarProvider.notifier).display('Upload photo failed! Error: uo');
            }
            return update_object_res.statusCode;
          } else {
            ref.read(displaySnackBarProvider.notifier).display('Upload photo failed! Error: po');
          }
          return put_object_res.statusCode;
        } else {
          ref.read(displaySnackBarProvider.notifier).display('Upload photo failed! Error: gpu');
        }
        return generate_presigned_url_res.statusCode;
      }
    }
    return add_new_plates_res.statusCode;
  }
  return preconditionRequired;
}
