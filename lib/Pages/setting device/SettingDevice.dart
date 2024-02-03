// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:lux_security2/Pages/setting%20device/function_device.dart';
import 'package:lux_security2/Pages/setting%20device/widget_setting_device.dart';
import 'package:lux_security2/color.dart';
import 'package:telephony/telephony.dart';

class SettingDevice extends StatefulWidget {
  const SettingDevice({Key? key}) : super(key: key);

  @override
  State<SettingDevice> createState() => _SettingDeviceState();
}

class _SettingDeviceState extends State<SettingDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          image: const DecorationImage(
              image: AssetImage('images/bg.png'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SafeArea(
                child: tabbar(
              image: 'images/setting-2-2.png',
              name: 'تنظیمات دستگاه',
            )),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  language_device(),
                  Text('زبان دستگاه',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'iransans',
                          fontSize: 16),
                      textDirection: TextDirection.rtl),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  call_outage_power(),
                  Text(
                    'تماس در قطعی برق',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'iransans',
                        fontSize: 16),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  half_remote(),
                  Text(
                    'حالت نیمه فعال ریموت',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'iransans',
                        fontSize: 16),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Image.asset('images/delete.png'),
                    ),
                    Text(
                      'حذف ریموت',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'iransans',
                          fontSize: 16),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            report_batery(),
            SizedBox(
              height: 20,
            ),
            report_inventory(),
            SizedBox(
              height: 20,
            ),
            time_alarm(),
            SizedBox(
              height: 20,
            ),
            mode_alarm(),
          ],
        ),
      ),
    );
  }
}
