// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Pages/add%20devices/AddDevices.dart';
import 'package:lux_security2/Pages/contacts/Contacts.dart';
import 'package:lux_security2/Pages/help/Help.dart';
import 'package:lux_security2/Pages/inquiry/Inquiry.dart';
import 'package:lux_security2/Pages/password%20device/PasswordDevice.dart';
import 'package:lux_security2/Pages/relleh/Relleh.dart';
import 'package:lux_security2/Pages/setting%20app/SettingApp.dart';
import 'package:lux_security2/Pages/setting%20device/SettingDevice.dart';
import 'package:lux_security2/Pages/setting%20sim/SettingSim.dart';
import 'package:lux_security2/Pages/zoon/Zoon.dart';

List<String> NameOption = [
  'افزودن دستگاه',
  'مخاطبین',
  'تنظیمات سیمکارت',
  'تنظیمات اپلیکیشن',
  'رله',
  'زون ها',
  'راهنمایی',
  'پسورد دستگاه',
  'تنظیمات',
  'استعلام',
  'شنود',
];
List<String> IconOption = [
  'add',
  'profile-circle',
  'simcard',
  'setting-2-2',
  'electricity',
  'eye',
  'info-circle',
  'lock',
  'setting-2-2',
  'graph',
  'radar'
];
List<String> routOption = [
  '/Add',
  '/Contacts',
  '/Simcard',
  '/SettingApp',
  '/Relleh',
  '/Zoon',
  '/Help',
  '/PasswordDevices',
  '/SettingDevices',
  '/Inquiry',
  '/'
];
List<Widget> routOption1 = [
  AddDevices(),
  Contacts(),
  settingSim(),
  SettingApp(),
  Relleh(),
  Zoon(),
  Help(),
  PasswordDevices(),
  SettingDevice(),
  Inquiry(),
];
