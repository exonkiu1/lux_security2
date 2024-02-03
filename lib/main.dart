/* 
https://drive.google.com/file/d/156UTx7CSN2xO-o7uJc216o6PeAcbAYT8/view?usp=share_link
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/mybinding.dart';
import 'package:lux_security2/Pages/add%20devices/AddDevices.dart';
import 'package:lux_security2/Pages/contacts/Contacts.dart';
import 'package:lux_security2/Pages/password%20device/PasswordDevice.dart';
import 'package:lux_security2/Pages/relleh/Relleh.dart';
import 'package:lux_security2/Pages/setting%20app/SettingApp.dart';
import 'package:lux_security2/Pages/setting%20device/SettingDevice.dart';
import 'package:lux_security2/Pages/setting%20sim/SettingSim.dart';
import 'package:lux_security2/Pages/splash%20screen/SplashScreen.dart';
import 'package:lux_security2/Pages/test%20page/TestPage1.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telephony/telephony.dart';

import 'Pages/help/Help.dart';
import 'Pages/home page/HomePage.dart';
import 'Pages/inquiry/Inquiry.dart';
import 'Pages/zoon/Zoon.dart';

//import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';

main() async {
  // Be sure to add this line if initialize() call happens before runApp()

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/SplashScreen',
      initialBinding: mybinding(),
      getPages: [
        GetPage(name: '/HomePage', page: () => HomePage()),
        GetPage(name: '/TestPage1', page: () => TestPage()),
        GetPage(name: '/Add', page: () => AddDevices()),
        GetPage(name: '/Contacts', page: () => Contacts()),
        GetPage(name: '/Simcard', page: () => settingSim()),
        GetPage(name: '/SettingApp', page: () => SettingApp()),
        GetPage(name: '/PasswordDevices', page: () => PasswordDevices()),
        GetPage(name: '/SettingDevices', page: () => SettingDevice()),
        GetPage(name: '/Relleh', page: () => Relleh()),
        GetPage(name: '/Zoon', page: () => Zoon()),
        GetPage(name: '/Help', page: () => Help()),
        GetPage(name: '/Inquiry', page: () => Inquiry()),
        GetPage(name: '/SplashScreen', page: () => Splashscreen())
      ],
    );
  }
}
