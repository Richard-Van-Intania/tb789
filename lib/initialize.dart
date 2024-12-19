// ignore_for_file: constant_identifier_names

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:uuid/uuid.dart';

late final SharedPreferences prefs;
late final String appDocumentsDir;
late final String tempDir;

Future<void> initialize() async {
  prefs = await SharedPreferences.getInstance();
  appDocumentsDir = (await getApplicationDocumentsDirectory()).path;
  tempDir = (await getTemporaryDirectory()).path;

  // host
  if (Platform.isIOS) {
    host = 'localhost';
  } else {
    host = '10.0.2.2';
  }
}

const Locale th = Locale('th');
const Locale en = Locale('en');

const Uuid uuid = Uuid();

final RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');

final RegExp regInt = RegExp(r'[^0-9]');

final RegExp numberRegex = RegExp(r'^\d+$');
final RegExp englishRegex = RegExp(r'^[a-zA-Z\s]+$');
final RegExp thaiRegex = RegExp(r'^[\u0E00-\u0E7F\s]+$');

final NumberFormat commaFormat = NumberFormat('###,###.0#', 'en_US');

bool stopRenewToken = false;

const int nullAliasInt = 0;
const String nullAliasString = 'null';
const String apiKey = 'A46442B3454C93571153AB45137A2';

const FlutterSecureStorage flutterSecureStorage = FlutterSecureStorage();

const int preconditionRequired = 428;

const String cdnDomainName = 'https://d27r257vlsyci.cloudfront.net';

const String profileKey = 'profile/profile_';
const String platesKey = 'plates/plates_';
const String coverKey = 'cover/cover_';

const String hintEmail = 'your_email@example.com';
const String hintPassword = '12345****';
const String delete_account = 'delete_account';

const BoxConstraints constraints = BoxConstraints(maxWidth: 840.0);
const BoxConstraints cardConstraints = BoxConstraints(maxWidth: 560.0);

const double breakPoint = 600.0;

const String thangLuang = 'ThangLuang';

const Set<String> frontNumber = {'-', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
const Set<String> number = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};

const Set<String> firstLetter = {'ก', 'ข', 'ค', 'ฆ', 'ง', 'จ', 'ฉ', 'ช', 'ฌ', 'ญ', 'ฎ', 'ฐ', 'ฑ', 'ฒ', 'ณ', 'ต', 'ถ', 'ธ', 'น', 'บ', 'ป', 'ผ', 'พ', 'ภ', 'ว', 'ศ', 'ษ', 'ส', 'ห', 'ฬ', 'อ', 'ฮ'};
const Set<String> secondLetter = {'ก', 'ข', 'ฃ', 'ค', 'ฅ', 'ฆ', 'ง', 'จ', 'ฉ', 'ช', 'ซ', 'ฌ', 'ญ', 'ฎ', 'ฏ', 'ฐ', 'ฑ', 'ฒ', 'ณ', 'ด', 'ต', 'ถ', 'ท', 'ธ', 'น', 'บ', 'ป', 'ผ', 'ฝ', 'พ', 'ฟ', 'ภ', 'ม', 'ย', 'ร', 'ฤ', 'ล', 'ฦ', 'ว', 'ศ', 'ษ', 'ส', 'ห', 'ฬ', 'อ', 'ฮ'};

// host
late final String host;
