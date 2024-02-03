// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:lux_security2/color.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telephony/telephony.dart';

class PasswordDevices extends StatefulWidget {
  const PasswordDevices({Key? key}) : super(key: key);

  @override
  State<PasswordDevices> createState() => _PasswordDevicesState();
}

class _PasswordDevicesState extends State<PasswordDevices> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  //late TextEditingController pass1, pass2, pass3;
  TextEditingController pass1 = TextEditingController();
  TextEditingController pass3 = TextEditingController();
  TextEditingController pass2 = TextEditingController();
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
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SafeArea(
                child: tabbar(
              image: 'images/lock.png',
              name: 'تنظیم پسورد دستگاه',
            )),
            const SizedBox(
              height: 20,
            ),
            Container(
                width: Get.width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40), color: color2),
                child: TextField(
                  style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
                  controller: pass1,
                  // focusNode: focusNode1,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (text) {
                    text.length >= 4 ? focusNode1.requestFocus() : null;
                  },

                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'رمز فعلی را وارد کنید',
                      hintStyle: TextStyle(
                          color: color4, fontSize: 12, fontFamily: 'iransans')),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                width: Get.width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40), color: color2),
                child: TextField(
                  style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
                  controller: pass2,
                  focusNode: focusNode1,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (text) {
                    text.length >= 4 ? focusNode2.requestFocus() : null;
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'رمز جدید را وارد کنید',
                      hintStyle: TextStyle(
                          color: color4, fontSize: 12, fontFamily: 'iransans')),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                width: Get.width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40), color: color2),
                child: TextField(
                  style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
                  keyboardType: TextInputType.number,
                  controller: pass3,
                  focusNode: focusNode2,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'رمز جدید را تکرار کنید',
                      hintStyle: TextStyle(
                          color: color4, fontSize: 12, fontFamily: 'iransans')),
                )),
            const SizedBox(
              height: 20,
            ),
             InkWell(
              onTap:  Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .fifteensecends
                                              .value >=
                                          15
                                      ?(){Get.defaultDialog(
          backgroundColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[
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
          middleText: 'پیامک فرستاده شود؟',
          /*  onCancel: () => Get.,
                                    textCancel: 'خیر', */
          cancelTextColor: Get.find<controlleronoff>(tag: 'secend')
              .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
          confirmTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
          buttonColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
          textConfirm: 'بله',
          onConfirm: () async {
                              if (Get.find<controllerphoneinfo>(tag: 'secend')
                                          .Password
                                          .value ==
                                      pass1.text &&
                                  pass2.text == pass3.text) {
                                Get.back();
                                final Telephony telephony = Telephony.instance;
                                telephony.sendSms(
                                  to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                  message:
                                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*40*${pass2.text}#',
                                );
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .Password
                                    .value = pass2.text;
                                Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .updatePhone();
                                    var prefs = await SharedPreferences.getInstance();
                    
                    prefs.setString('password_1', pass2.text);
                              } else {
                                Get.snackbar(
                                    'خطا', 'فیلد هارا دوباره و صحیح وارد کنید');
                              }
                            });} : () => Get.snackbar('خطا',
                                          'هر 15 ثانیه یکبار درخواست ارسال کنید'),
               child: Container(
                  decoration: boxdecoration1,
                  padding: EdgeInsets.all(4),
                  width: Get.width * 0.3,
                  child: const Center(
                    child: Text(
                      'تغییر',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'iransans'),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
             ),
            
          ],
        ),
      ),
    );
  }
}
