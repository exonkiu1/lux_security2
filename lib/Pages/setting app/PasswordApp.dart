// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../color.dart';

class PasswordApp extends StatefulWidget {
  const PasswordApp({Key? key}) : super(key: key);

  @override
  State<PasswordApp> createState() => _PasswordAppState();
}

class _PasswordAppState extends State<PasswordApp> {
  FocusNode focusnode = FocusNode();
  TextEditingController pass2 = TextEditingController();
  TextEditingController pass3 = TextEditingController();
  bool lock = false, lock2 = false;
  void password() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      lock = prefs.getBool('lock') ?? false;
      lock2 = prefs.getBool('lock') ?? false;
    });
  }

  @override
  void initState() {
    password();
    //  gotomainpage();
    // TODO: implement initState
    super.initState();
  }

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
              child: tabbar(
                image: 'images/lock.png',
                name: 'تنظیم رمز عبور',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                width: Get.width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40), color: color2),
                child: TextField(
                  style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
                  controller: pass2,
                  keyboardType: TextInputType.number,
                  cursorColor: Get.find<controlleronoff>(tag: 'secend')
                          .Themecolor[
                      Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                  textAlign: TextAlign.center,
                  onChanged: (text) {
                    text.length >= 6 ? focusnode.requestFocus() : null;
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
                  focusNode: focusnode,
                  cursorColor: Get.find<controlleronoff>(tag: 'secend')
                          .Themecolor[
                      Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
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
              onTap: () async {
                if (pass2.text.length == 6) {
                  if (pass2.text == pass3.text) {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.setString('password', pass2.text);
                    Get.snackbar('اطلاعیه', 'پسورد تغییر داده شد');
                  } else {
                    Get.snackbar('خطا', 'فیلد هارا دوباره و صحیح وارد کنید');
                  }
                } else {
                  Get.snackbar('خطا', 'طول پسورد باید 6 عدد باشد');
                }
              },
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
            Container(
              width: Get.width * 0.7,
              child: CheckboxListTile(
                value: lock,
                          onChanged: (value) async {
                            setState(() {
                              lock = value ?? false;
                            });

                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            prefs.setBool('lock', lock);
                            // ignore: await_only_futures
                            print(await prefs.getBool('OnPassword'));
                          },
                title: Text(
                  'ورود با  پسورد',
                  style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
                ),
              ),
            ),
            Container(
              width: Get.width * 0.7,
              child: CheckboxListTile(
               value: lock2,
                          onChanged: (value) async {
                            setState(() {
                              lock2 = value ?? false;
                            });

                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            prefs.setBool('OnPassword', lock2);
                            print(await prefs.getBool('OnPassword'));
                          },
                title: Text(
                  'ورود با اثر انگشت',
                  style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
