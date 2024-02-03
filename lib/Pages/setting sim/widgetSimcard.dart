// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:lux_security2/Pages/home%20page/HomePage.dart';

import '../../color.dart';

class delete_device extends StatelessWidget {
  const delete_device({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(
            Get.find<controllerphoneinfo>(tag: 'secend').fifteensecends.value);
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
            middleText: 'از حذف دستگاه مطمعن هستید؟',
            /*  onCancel: () => Get.,
                                          textCancel: 'خیر', */
            cancelTextColor: Get.find<controlleronoff>(tag: 'secend')
                .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
            confirmTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
            buttonColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
            textConfirm: 'بله',
            onConfirm: () {
              Get.find<controllerphoneinfo>(tag: 'secend').Deletephons();
           
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('images/refresh-2.png'),
            Text(
              'حذف دستگاه فعلی',
              style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}

class change_name extends StatelessWidget {
  const change_name({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        TextEditingController Changename = TextEditingController();
        Get.defaultDialog(
            title: ' تغییر نام دستگاه فعلی',
            backgroundColor:
                Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![1],
            titleStyle: TextStyle(
                color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![2]),
            content: Container(
              width: Get.width * 0.7,
              child: Column(
                children: [
                  TextField(
                    cursorColor: Get.find<controlleronoff>(tag: 'secend')
                            .Themecolor[
                        Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                    style: TextStyle(
                        color:
                            Get.find<controlleronoff>(tag: 'secend').Themecolor[
                                Get.find<controlleronoff>(tag: 'secend')
                                    .moodcolor]![2],
                        fontSize: 20),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Get.find<controlleronoff>(tag: 'secend')
                                    .Themecolor[
                                Get.find<controlleronoff>(tag: 'secend')
                                    .moodcolor]![2]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Get.find<controlleronoff>(tag: 'secend')
                                    .Themecolor[
                                Get.find<controlleronoff>(tag: 'secend')
                                    .moodcolor]![0]),
                      ),
                    ),
                    controller: Changename,
                    autofocus: true,
                  ),
                  InkWell(
                    onTap: () {
                      Get.find<controllerphoneinfo>(tag: 'secend').Name.value =
                          Changename.text;
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .updatePhone();
                      Get.snackbar('اطلاعیه',
                          'تغییرات مورد نظر اعمال شد لطفا برنامه را یکبار کامل ببندید دوباره وارد شوید');
                    },
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.all(9.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Get.find<controlleronoff>(tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0]),
                      child: Text(
                        'تایید',
                        style: TextStyle(
                            color: Get.find<controlleronoff>(tag: 'secend')
                                    .Themecolor[
                                Get.find<controlleronoff>(tag: 'secend')
                                    .moodcolor]![2]),
                      ),
                    ),
                  )
                ],
              ),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('images/refresh-2.png'),
            const Text(
              'تغییر نام دستگاه فعلی',
              style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}

class change_phone extends StatelessWidget {
  const change_phone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        TextEditingController changephone = TextEditingController();
        Get.defaultDialog(
            backgroundColor:
                Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![1],
            titleStyle: TextStyle(
                color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                fontSize: 20),
            title:
                'تغییر شماره تلفن دستگاه ${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}',
            content: Container(
                width: Get.width * 0.7,
                child: Column(
                  children: [
                    TextField(
                      cursorColor:
                          Get.find<controlleronoff>(tag: 'secend').Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0],
                      style: TextStyle(
                          color: Get.find<controlleronoff>(tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![2],
                          fontSize: 20),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Get.find<controlleronoff>(tag: 'secend')
                                      .Themecolor[
                                  Get.find<controlleronoff>(tag: 'secend')
                                      .moodcolor]![2]),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Get.find<controlleronoff>(tag: 'secend')
                                      .Themecolor[
                                  Get.find<controlleronoff>(tag: 'secend')
                                      .moodcolor]![0]),
                        ),
                      ),
                      controller: changephone,
                      autofocus: true,
                    ),
                    InkWell(
                      onTap: () {
                        String copyphone = '';
                        for (var i = 1; i < changephone.text.length; i++) {
                          copyphone = copyphone + changephone.text[i];
                        }
                        Get.find<controllerphoneinfo>(tag: 'secend')
                            .phone
                            .value = copyphone;
                        Get.find<controllerphoneinfo>(tag: 'secend')
                            .updatePhone();
                        Get.back();
                        Get.snackbar('اطلاعیه', 'تغییرات مورد نظر اعمال شد');
                      },
                      child: Container(
                          padding: EdgeInsets.all(
                            9.0,
                          ),
                          margin: EdgeInsets.all(9.0),
                          decoration: BoxDecoration(
                              color: Get.find<controlleronoff>(tag: 'secend')
                                      .Themecolor[
                                  Get.find<controlleronoff>(tag: 'secend')
                                      .moodcolor]![0],
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'تایید',
                            style: TextStyle(
                                color: Get.find<controlleronoff>(tag: 'secend')
                                        .Themecolor[
                                    Get.find<controlleronoff>(tag: 'secend')
                                        .moodcolor]![1],
                                fontSize: 20),
                          )),
                    )
                  ],
                )));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('images/refresh-2.png'),
            Text(
              'تغییر شماره تلفن دستگاه فعلی',
              style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}

///
class tabbar extends StatelessWidget {
  const tabbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFBEBEBE), borderRadius: BorderRadius.circular(40)),
      padding: EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: boxdecoration1,
            margin: const EdgeInsets.only(left: 4, right: 4),
            padding:
                EdgeInsets.symmetric(horizontal: Get.width * 0.03, vertical: 2),
            child: Row(
              children: [
                const Text(
                  'تنظیمات سیمکارت',
                  style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset('images/simcard.png'),
              ],
            ),
          ),
          InkWell(
            onTap: () =>
                Get.off(HomePage(), transition: Transition.rightToLeft),
            child: Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.05, vertical: 2),
              child: Row(
                children: [
                  Text(
                    'صفحه اصلی',
                    style: TextStyle(
                        color: Color(0xFF9D9D9D), fontFamily: 'iransans'),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Image.asset('images/home-2-2.png')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
