// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:lux_security2/Pages/setting%20app/PasswordApp.dart';
import 'package:lux_security2/Pages/setting%20app/PersonalityApp.dart';
import 'package:lux_security2/Pages/setting%20app/widgetsettinapp.dart';

class SettingApp extends StatefulWidget {
  const SettingApp({Key? key}) : super(key: key);

  @override
  State<SettingApp> createState() => _SettingAppState();
}

class _SettingAppState extends State<SettingApp> {
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
          children: [
            const SafeArea(
              child: tabbar(),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Get.to(PasswordApp());
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('images/lock.png'),
                    const Text(
                      'تنظیمات رمز عبور',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'iransans',
                      ),
                      textDirection: TextDirection.rtl,
                    )
                  ],
                ),
              ),
            ),

            ///
            ///
            ///
            InkWell(
              onTap: () =>Get.to(PersonalityApp()),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('images/profile-circle.png'),
                    const Text(
                      'شخصی سازی',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'iransans',
                      ),
                      textDirection: TextDirection.rtl,
                    )
                  ],
                ),
              ),
            ),

            ///
            ///
            const reset_app(),

            ///
            ///
            InkWell(
              onTap: (){},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('images/graph.png'),
                    const Text(
                      'تنظیم خودکار روشن خاموشی دستگاه',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'iransans',
                      ),
                      textDirection: TextDirection.rtl,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class reset_app extends StatelessWidget {
  const reset_app({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.defaultDialog(
            backgroundColor:
                Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![1],
            title: 'هشدار',
            titleStyle: TextStyle(
                color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                fontWeight: FontWeight.bold,
                fontSize: 16),
            middleTextStyle: TextStyle(
                color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                fontWeight: FontWeight.bold,
                fontSize: 16),
            middleText: ' ریست انجام شود؟',
            /*  onCancel: () => Get.,
                              textCancel: 'خیر', */
            cancelTextColor: Get.find<controlleronoff>(tag: 'secend')
                .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
            confirmTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
            buttonColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
            textConfirm: 'بله',
            onConfirm: () async {
              Get.find<controllerphoneinfo>(tag: 'secend').resetphone();
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('images/refresh-2.png'),
            const Text(
              'ریست تنظیمات نرم افزار',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'iransans',
              ),
              textDirection: TextDirection.rtl,
            )
          ],
        ),
      ),
    );
  }
}
