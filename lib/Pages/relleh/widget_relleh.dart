// ignore_for_file: file_names, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:lux_security2/color.dart';
import 'package:telephony/telephony.dart';

class relleh2_time_open_door extends StatelessWidget {
  const relleh2_time_open_door({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.defaultDialog(
          backgroundColor: Get.find<controlleronoff>(tag: 'secend')
                  .Themecolor[
              Get.find<controlleronoff>(tag: 'secend').moodcolor]![1],
          title: 'زمان درب بازکن رله 2',
          titleStyle: TextStyle(
              color:
                  Get.find<controlleronoff>(tag: 'secend').Themecolor[
                      Get.find<controlleronoff>(tag: 'secend')
                          .moodcolor]![2]),
          content: Container(
            width: Get.width * 0.7,
            child: Column(
              children: [
                Text(
                  'زمان هارا بصورت دو رقمی وارد کنید مانند:02,01,..',
                  style: TextStyle(
                      color: Get.find<controlleronoff>(tag: 'secend')
                              .Themecolor[
                          Get.find<controlleronoff>(tag: 'secend')
                              .moodcolor]![0]),
                ),
                TextField(
                  autofocus: true,
                  controller:
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .Rellehtime[3],
                  keyboardType: TextInputType.phone,
                  cursorColor:
                      Get.find<controlleronoff>(tag: 'secend')
                              .Themecolor[
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
                            color: Get.find<controlleronoff>(
                                    tag: 'secend')
                                .Themecolor[Get.find<controlleronoff>(
                                    tag: 'secend')
                                .moodcolor]![2]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Get.find<controlleronoff>(
                                    tag: 'secend')
                                .Themecolor[Get.find<controlleronoff>(
                                    tag: 'secend')
                                .moodcolor]![0]),
                      ),
                      hintText:
                          'ساعت ${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[3].split(',')[2]}',
                      hintStyle: TextStyle(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0],
                          fontSize: 16)),
                ),
                TextField(
                  autofocus: true,
                  controller:
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .Rellehtime[4],
                  keyboardType: TextInputType.phone,
                  cursorColor:
                      Get.find<controlleronoff>(tag: 'secend')
                              .Themecolor[
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
                            color: Get.find<controlleronoff>(
                                    tag: 'secend')
                                .Themecolor[Get.find<controlleronoff>(
                                    tag: 'secend')
                                .moodcolor]![2]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Get.find<controlleronoff>(
                                    tag: 'secend')
                                .Themecolor[Get.find<controlleronoff>(
                                    tag: 'secend')
                                .moodcolor]![0]),
                      ),
                      hintText:
                          'دقیقه${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[3].split(',')[1]} ',
                      hintStyle: TextStyle(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0],
                          fontSize: 16)),
                ),
                TextField(
                  controller:
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .Rellehtime[5],
                  keyboardType: TextInputType.phone,
                  cursorColor:
                      Get.find<controlleronoff>(tag: 'secend')
                              .Themecolor[
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
                            color: Get.find<controlleronoff>(
                                    tag: 'secend')
                                .Themecolor[Get.find<controlleronoff>(
                                    tag: 'secend')
                                .moodcolor]![2]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Get.find<controlleronoff>(
                                    tag: 'secend')
                                .Themecolor[Get.find<controlleronoff>(
                                    tag: 'secend')
                                .moodcolor]![0]),
                      ),
                      hintText:
                          'ثانیه ${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[3].split(',')[0]}',
                      hintStyle: TextStyle(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0],
                          fontSize: 16)),
                ),
                InkWell(
                  onTap: () {
                    if (Get.find<controllerphoneinfo>(tag: 'secend')
                                .Rellehtime[5]
                                .text
                                .length ==
                            2 &&
                        Get.find<controllerphoneinfo>(tag: 'secend')
                                .Rellehtime[4]
                                .text
                                .length ==
                            2 &&
                        Get.find<controllerphoneinfo>(tag: 'secend')
                                .Rellehtime[3]
                                .text
                                .length ==
                            2) {
                      Get.find<controllerphoneinfo>(tag: 'secend')
                              .Relehs[3] =
                          '${Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[5].text},${Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[4].text},${Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[3].text}';
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .updatePhone();
                      Get.snackbar('تایید', 'تغییرات اعمال شد');
                    } else {
                      Get.snackbar('خطا', 'دو رقمی لطفا وارد کنید');
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Get.find<controlleronoff>(tag: 'secend')
                              .Themecolor[
                          Get.find<controlleronoff>(tag: 'secend')
                              .moodcolor]![0],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'تایید',
                      style: TextStyle(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![2]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'زمان درب بازکن ${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[2]}',
            style: TextStyle(
                color: Colors.white, fontFamily: 'iransans'),
            textDirection: TextDirection.rtl,
          ),
        ),
      ),
    );
  }
}

class rellehs_setting_more extends StatelessWidget {
  const rellehs_setting_more({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        List<String> typeReleh = [
          'دینگ دانگ',
          'تحریک زون معمولی',
          'زون جاسوسی',
          '24 ساعت',
          'قطع برق',
          'حالت سایلنت',
        ];
        Get.defaultDialog(
            backgroundColor:
                Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend')
                        .moodcolor]![1],
            title: 'نوع تحریک رله 1',
            titleStyle: TextStyle(
                color: Get.find<controlleronoff>(tag: 'secend')
                        .Themecolor[
                    Get.find<controlleronoff>(tag: 'secend')
                        .moodcolor]![2]),
            content: Container(
              width: Get.width * 0.7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'یکی از گزینه های زیر را برای تعیین نوع تحریک رله انتخاب کنید',
                      style: TextStyle(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0]),
                    ),
                    Text(
                      'اگر با این بخش آشنایی ندارید به هیچ عنوان تغییری اعمال نکنید!',
                      style: TextStyle(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0],
                          fontWeight: FontWeight.bold),
                    ),
                    Column(
                      children:
                          List.generate(typeReleh.length, (index) {
                        return InkWell(
                          onTap: () {
                            Get.find<controllerphoneinfo>(
                                    tag: 'secend')
                                .TypeRelleh
                                .value = index;
                            final Telephony telephony =
                                Telephony.instance;
                            telephony.sendSms(
                              to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                              message:
                                  '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*29*1*${index + 1}#',
                            );
                            Get.back();
                          },
                          child: Container(
                            padding: EdgeInsets.all(2.0),
                            margin: EdgeInsets.all(2.0),
                            width: Get.width * 0.6,
                            decoration: BoxDecoration(
                                color: Get.find<controllerphoneinfo>(tag: 'secend').TypeRelleh.value == index
                                    ? Get.find<controlleronoff>(tag: 'secend').Themecolor[
                                        Get.find<controlleronoff>(tag: 'secend')
                                            .moodcolor]![0]
                                    : Get.find<controlleronoff>(tag: 'secend').Themecolor[
                                        Get.find<controlleronoff>(tag: 'secend')
                                            .moodcolor]![1],
                                border: Border.all(
                                    color: Get.find<controlleronoff>(tag: 'secend')
                                        .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0]),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                typeReleh[index],
                                style: TextStyle(
                                    color: Get.find<controlleronoff>(
                                                tag: 'secend')
                                            .Themecolor[
                                        Get.find<controlleronoff>(
                                                tag: 'secend')
                                            .moodcolor]![2],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            ));
      },
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
        child: Align(
            alignment: Alignment.centerRight,
            child: Text('تنظیمات بیشتر',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'iransans',
                ))),
      ),
    );
  }
}

class rellehs_name extends StatelessWidget {
  const rellehs_name({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        TextEditingController namerelleh1 = TextEditingController();
        TextEditingController namerelleh2 = TextEditingController();
        Get.defaultDialog(
          backgroundColor: Get.find<controlleronoff>(tag: 'secend')
                  .Themecolor[
              Get.find<controlleronoff>(tag: 'secend').moodcolor]![1],
          title: 'ویرایش نام رله',
          titleStyle: TextStyle(
              color:
                  Get.find<controlleronoff>(tag: 'secend').Themecolor[
                      Get.find<controlleronoff>(tag: 'secend')
                          .moodcolor]![2]),
          content: Container(
            width: Get.width * 0.7,
            child: Column(
              children: [
                TextField(
                  autofocus: true,
                  controller: namerelleh1,
                  // keyboardType: TextInputType.phone,
                  cursorColor:
                      Get.find<controlleronoff>(tag: 'secend')
                              .Themecolor[
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
                            color: Get.find<controlleronoff>(
                                    tag: 'secend')
                                .Themecolor[Get.find<controlleronoff>(
                                    tag: 'secend')
                                .moodcolor]![2]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Get.find<controlleronoff>(
                                    tag: 'secend')
                                .Themecolor[Get.find<controlleronoff>(
                                    tag: 'secend')
                                .moodcolor]![0]),
                      ),
                      hintText: 'نام رله 1',
                      hintStyle: TextStyle(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0],
                          fontSize: 16)),
                ),
                InkWell(
                  onTap: () async {
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .Relehs[0] = namerelleh1.text;
                        Get.back();
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .updatePhone();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Get.find<controlleronoff>(tag: 'secend')
                              .Themecolor[
                          Get.find<controlleronoff>(tag: 'secend')
                              .moodcolor]![0],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'تایید',
                      style: TextStyle(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![2]),
                    ),
                  ),
                ),
                Obx(() {
                  return Visibility(
                    visible:
                        Get.find<controllerphoneinfo>(tag: 'secend')
                                        .TypeMicro
                                        .value ==
                                    'Lx50' ||
                                Get.find<controllerphoneinfo>(
                                            tag: 'secend')
                                        .TypeMicro
                                        .value ==
                                    'Lx500'
                            ? false
                            : true,
                    child: TextField(
                      controller: namerelleh2,
                      //   keyboardType: TextInputType.phone,
                      cursorColor:
                          Get.find<controlleronoff>(tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0],
                      style: TextStyle(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![2],
                          fontSize: 20),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Get.find<controlleronoff>(
                                            tag: 'secend')
                                        .Themecolor[
                                    Get.find<controlleronoff>(
                                            tag: 'secend')
                                        .moodcolor]![2]),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Get.find<controlleronoff>(
                                            tag: 'secend')
                                        .Themecolor[
                                    Get.find<controlleronoff>(
                                            tag: 'secend')
                                        .moodcolor]![0]),
                          ),
                          hintText: 'نام رله 2',
                          hintStyle: TextStyle(
                              color: Get.find<controlleronoff>(
                                          tag: 'secend')
                                      .Themecolor[
                                  Get.find<controlleronoff>(
                                          tag: 'secend')
                                      .moodcolor]![0],
                              fontSize: 16)),
                    ),
                  );
                }),
                Obx(() {
                  return Visibility(
                    visible:
                        Get.find<controllerphoneinfo>(tag: 'secend')
                                        .TypeMicro
                                        .value ==
                                    'Lx50' ||
                                Get.find<controllerphoneinfo>(
                                            tag: 'secend')
                                        .TypeMicro
                                        .value ==
                                    'Lx500'
                            ? false
                            : true,
                    child: InkWell(
                      onTap: () async {
                        Get.find<controllerphoneinfo>(tag: 'secend')
                            .Relehs[2] = namerelleh2.text;
                            Get.back();
                        Get.find<controllerphoneinfo>(tag: 'secend')
                            .updatePhone();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        child: Text(
                          'تایید',
                          style: TextStyle(
                              color: Get.find<controlleronoff>(
                                          tag: 'secend')
                                      .Themecolor[
                                  Get.find<controlleronoff>(
                                          tag: 'secend')
                                      .moodcolor]![2]),
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        );
      },
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
        child: Align(
            alignment: Alignment.centerRight,
            child: Text('نام گذاری رله',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'iransans',
                ))),
      ),
    );
  }
}


class relleh1_time_open_door extends StatelessWidget {
  const relleh1_time_open_door({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.defaultDialog(
          backgroundColor: Get.find<controlleronoff>(tag: 'secend')
                  .Themecolor[
              Get.find<controlleronoff>(tag: 'secend').moodcolor]![1],
          title: 'زمان درب بازکن رله 1',
          titleStyle: TextStyle(
              color:
                  Get.find<controlleronoff>(tag: 'secend').Themecolor[
                      Get.find<controlleronoff>(tag: 'secend')
                          .moodcolor]![2]),
          content: Container(
            width: Get.width * 0.7,
            child: Column(
              children: [
                Text(
                  'زمان هارا بصورت دو رقمی وارد کنید مانند:02,01,..',
                  style: TextStyle(
                      color: Get.find<controlleronoff>(tag: 'secend')
                              .Themecolor[
                          Get.find<controlleronoff>(tag: 'secend')
                              .moodcolor]![0]),
                ),
                TextField(
                  autofocus: true,
                  controller:
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .Rellehtime[0],
                  keyboardType: TextInputType.phone,
                  cursorColor:
                      Get.find<controlleronoff>(tag: 'secend')
                              .Themecolor[
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
                            color: Get.find<controlleronoff>(
                                    tag: 'secend')
                                .Themecolor[Get.find<controlleronoff>(
                                    tag: 'secend')
                                .moodcolor]![2]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Get.find<controlleronoff>(
                                    tag: 'secend')
                                .Themecolor[Get.find<controlleronoff>(
                                    tag: 'secend')
                                .moodcolor]![0]),
                      ),
                      hintText:
                          'ساعت${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[2]} ',
                      hintStyle: TextStyle(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0],
                          fontSize: 16)),
                ),
                TextField(
                  autofocus: true,
                  controller:
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .Rellehtime[1],
                  keyboardType: TextInputType.phone,
                  cursorColor:
                      Get.find<controlleronoff>(tag: 'secend')
                              .Themecolor[
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
                            color: Get.find<controlleronoff>(
                                    tag: 'secend')
                                .Themecolor[Get.find<controlleronoff>(
                                    tag: 'secend')
                                .moodcolor]![2]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Get.find<controlleronoff>(
                                    tag: 'secend')
                                .Themecolor[Get.find<controlleronoff>(
                                    tag: 'secend')
                                .moodcolor]![0]),
                      ),
                      hintText:
                          'دقیقه${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[1]} ',
                      hintStyle: TextStyle(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0],
                          fontSize: 16)),
                ),
                TextField(
                  controller:
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .Rellehtime[2],
                  keyboardType: TextInputType.phone,
                  cursorColor:
                      Get.find<controlleronoff>(tag: 'secend')
                              .Themecolor[
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
                            color: Get.find<controlleronoff>(
                                    tag: 'secend')
                                .Themecolor[Get.find<controlleronoff>(
                                    tag: 'secend')
                                .moodcolor]![2]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Get.find<controlleronoff>(
                                    tag: 'secend')
                                .Themecolor[Get.find<controlleronoff>(
                                    tag: 'secend')
                                .moodcolor]![0]),
                      ),
                      hintText:
                          'ثانیه${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[0]} ',
                      hintStyle: TextStyle(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0],
                          fontSize: 16)),
                ),
                InkWell(
                  onTap: () {
                    if (Get.find<controllerphoneinfo>(tag: 'secend')
                                .Rellehtime[2]
                                .text
                                .length ==
                            2 &&
                        Get.find<controllerphoneinfo>(tag: 'secend')
                                .Rellehtime[1]
                                .text
                                .length ==
                            2 &&
                        Get.find<controllerphoneinfo>(tag: 'secend')
                                .Rellehtime[0]
                                .text
                                .length ==
                            2) {
                      Get.find<controllerphoneinfo>(tag: 'secend')
                              .Relehs[1] =
                          '${Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[2].text},${Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[1].text},${Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[0].text}';
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .updatePhone();
                      Get.snackbar('تایید', 'تغییرات اعمال شد');
                    } else {
                      Get.snackbar('خطا', 'دو رقمی لطفا وارد کنید');
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Get.find<controlleronoff>(tag: 'secend')
                              .Themecolor[
                          Get.find<controlleronoff>(tag: 'secend')
                              .moodcolor]![0],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'تایید',
                      style: TextStyle(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![2]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'زمان درب بازکن ${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[0]}',
            style: TextStyle(
                color: Colors.white, fontFamily: 'iransans'),
            textDirection: TextDirection.rtl,
          ),
        ),
      ),
    );
  }
}

class relleh1_opendoor extends StatelessWidget {
  const relleh1_opendoor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                  .fifteensecends
                  .value >=
              15
          ? () async {
              Get.defaultDialog(
                  backgroundColor: Get.find<controlleronoff>(tag: 'secend')
                          .Themecolor[
                      Get.find<controlleronoff>(tag: 'secend').moodcolor]![1],
                  title: 'هشدار',
                  titleStyle: TextStyle(
                      color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                          Get.find<controlleronoff>(tag: 'secend')
                              .moodcolor]![2],
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
                  cancelTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                  confirmTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                  buttonColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                  textConfirm: 'بله',
                  onConfirm: () {
                    print(
                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*20*2*${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[2]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[1]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[0]}#',
                    );
                    if (Get.find<controllerphoneinfo>(tag: 'secend')
                            .TypeMicro
                            .value ==
                        'Lx50') {
                      final Telephony telephony = Telephony.instance;
                      telephony.sendSms(
                        to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                        message:
                            '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*21*t${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[2]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[1]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[0]}#',
                      );
                    } else {
                      final Telephony telephony = Telephony.instance;
                      telephony.sendSms(
                        to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                        message:
                            '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*${Get.find<controllerphoneinfo>(tag:'secend').TypeMicro.value=='Old1000'?22:21}*t${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[2]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[1]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[0]}#',
                      );
                    }

                    Get.back();
                    Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .startfifteensecends();
                  });
            }
          : () => Get.snackbar('خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
        decoration: boxdecoration1,
        child: Text(
          'درب بازکن',
          textDirection: TextDirection.rtl,
          style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
        ),
      ),
    );
  }
}

class relleh1_off extends StatelessWidget {
  const relleh1_off({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
             (){
        return InkWell(
          onTap:  Get.find<controllerphoneinfo>(tag: 'secend')
                                .fifteensecends
                                .value >=
                            15
                        ? () async {
                            Get.defaultDialog(
                                backgroundColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                                    Get.find<controlleronoff>(tag: 'secend')
                                        .moodcolor]![1],
                                title: 'هشدار',
                                titleStyle: TextStyle(
                                    color: Get.find<controlleronoff>(tag: 'secend')
                                            .Themecolor[
                                        Get.find<controlleronoff>(tag: 'secend')
                                            .moodcolor]![2],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                                middleTextStyle: TextStyle(
                                    color: Get.find<controlleronoff>(tag: 'secend')
                                        .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                                middleText: 'پیامک فرستاده شود؟',
                                /*  onCancel: () => Get.,
                          textCancel: 'خیر', */
                                cancelTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                                confirmTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                                buttonColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                                textConfirm: 'بله',
                                onConfirm: () {
                                  Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .Relleh1
                                      .value = 'off';
                                  Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .updatePhone();
                                  if (Get.find<controllerphoneinfo>(tag: 'secend').TypeMicro.value=='Lx50'){
                                    final Telephony telephony =
                                      Telephony.instance;
                                  telephony.sendSms(
                                    to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                    message:
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*21*OFF#',
                                  );
                                  } else {
                                    final Telephony telephony =
                                      Telephony.instance;
                                  telephony.sendSms(
                                    to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                    message:
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*${Get.find<controllerphoneinfo>(tag:'secend').TypeMicro.value=='Old1000'?22:21}*OFF#',
                                  );
                                  }
                                  
                                  Get.back();
                                  Get.snackbar(
                                      'اطلاعیه', 'پیامک فرستاده شد');
                                  Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .startfifteensecends();
                                });
                          }
                        : () => Get.snackbar('خطا',
                            'هر 15 ثانیه یکبار درخواست ارسال کنید'),
          child: Obx(
           () {
              return Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                decoration: Get.find<controllerphoneinfo>(tag: 'secend')
                            .Relleh1
                            .value ==
                        'off'
                    ? boxdecoration1
                    : null,
                child: Center(
                  child: Text(
                    'غیر فعال',
                    textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontFamily: 'iransans'),
                  ),
                ),
              );
            }
          ),
        );
      }
    );
  }
}

class relleh1_on extends StatelessWidget {
  const relleh1_on({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
             (){
        return InkWell(
          onTap:  Get.find<controllerphoneinfo>(tag: 'secend')
                                .fifteensecends
                                .value >=
                            15
                        ? () async {
                            Get.defaultDialog(
                                backgroundColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                                    Get.find<controlleronoff>(tag: 'secend')
                                        .moodcolor]![1],
                                title: 'هشدار',
                                titleStyle: TextStyle(
                                    color: Get.find<controlleronoff>(tag: 'secend')
                                            .Themecolor[
                                        Get.find<controlleronoff>(tag: 'secend')
                                            .moodcolor]![2],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                                middleTextStyle: TextStyle(
                                    color: Get.find<controlleronoff>(tag: 'secend')
                                        .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                                middleText: 'پیامک فرستاده شود؟',
                                /*  onCancel: () => Get.,
                          textCancel: 'خیر', */
                                cancelTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                                confirmTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                                buttonColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                                textConfirm: 'بله',
                                onConfirm: () {
                                  Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .Relleh1
                                      .value = 'on';
                                  Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .updatePhone();
                                  if (Get.find<controllerphoneinfo>(tag: 'secend').TypeMicro.value=='Lx50'){
                                    final Telephony telephony =
                                      Telephony.instance;
                                  telephony.sendSms(
                                    to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                    message:
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*21*ON#',
                                  );
                                  } else {
                                    
                                    final Telephony telephony =
                                      Telephony.instance;
                                  
                                  telephony.sendSms(
                                    to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                    message:
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*${Get.find<controllerphoneinfo>(tag:'secend').TypeMicro.value=='Old1000'?22:21}*ON#',
                                  );
                                  }
                                  print(                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*${Get.find<controllerphoneinfo>(tag:'secend').TypeMicro.value=='Old1000'?22:21}*ON#'
);
                                  Get.back();
                                  Get.snackbar(
                                      'اطلاعیه', 'پیامک فرستاده شد');
                                  Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .startfifteensecends();
                                });
                          }
                        : () => Get.snackbar('خطا',
                            'هر 15 ثانیه یکبار درخواست ارسال کنید'),
          child: Obx(
           () {
              return Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: color4),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                        decoration: Get.find<controllerphoneinfo>(tag: 'secend')
                                    .Relleh1
                                    .value ==
                                'on'
                            ? boxdecoration1
                            : null,
                        child: Center(
                          child: Text(
                            'فعال',
                            textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontFamily: 'iransans'),
                          ),
                        ),
                      ),
                    ],
                  ));
            }
          ),
        );
      }
    );
  }
}



class relleh2_on extends StatelessWidget {
  const relleh2_on({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
             (){
        return InkWell(
          onTap:  Get.find<controllerphoneinfo>(tag: 'secend')
                                .fifteensecends
                                .value >=
                            15
                        ? () async {
                            Get.defaultDialog(
                                backgroundColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                                    Get.find<controlleronoff>(tag: 'secend')
                                        .moodcolor]![1],
                                title: 'هشدار',
                                titleStyle: TextStyle(
                                    color: Get.find<controlleronoff>(tag: 'secend')
                                            .Themecolor[
                                        Get.find<controlleronoff>(tag: 'secend')
                                            .moodcolor]![2],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                                middleTextStyle: TextStyle(
                                    color: Get.find<controlleronoff>(tag: 'secend')
                                        .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                                middleText: 'پیامک فرستاده شود؟',
                                /*  onCancel: () => Get.,
                          textCancel: 'خیر', */
                                cancelTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                                confirmTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                                buttonColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                                textConfirm: 'بله',
                                onConfirm: () {
                                  Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .Relleh2
                                      .value = 'on';
                                  Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .updatePhone();
                                  if (Get.find<controllerphoneinfo>(tag: 'secend').TypeMicro.value=='Lx50'){
                                    final Telephony telephony =
                                      Telephony.instance;
                                  telephony.sendSms(
                                    to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                    message:
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*22*ON#',
                                  );
                                  } else {
                                    final Telephony telephony =
                                      Telephony.instance;
                                  telephony.sendSms(
                                    to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                    message:
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*${Get.find<controllerphoneinfo>(tag:'secend').TypeMicro.value=='Old1000'?21:22}*ON#',
                                  );
                                  }
                                  
                                  Get.back();
                                  Get.snackbar(
                                      'اطلاعیه', 'پیامک فرستاده شد');
                                  Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .startfifteensecends();
                                });
                          }
                        : () => Get.snackbar('خطا',
                            'هر 15 ثانیه یکبار درخواست ارسال کنید'),
          child: Obx(
           () {
              return Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: color4),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                        decoration: Get.find<controllerphoneinfo>(tag: 'secend')
                                    .Relleh2
                                    .value ==
                                'on'
                            ? boxdecoration1
                            : null,
                        child: Center(
                          child: Text(
                            'فعال',
                            textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontFamily: 'iransans'),
                          ),
                        ),
                      ),
                    ],
                  ));
            }
          ),
        );
      }
    );
  }
}



class relleh2_off extends StatelessWidget {
  const relleh2_off({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
             (){
        return InkWell(
          onTap:  Get.find<controllerphoneinfo>(tag: 'secend')
                                .fifteensecends
                                .value >=
                            15
                        ? () async {
                            Get.defaultDialog(
                                backgroundColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                                    Get.find<controlleronoff>(tag: 'secend')
                                        .moodcolor]![1],
                                title: 'هشدار',
                                titleStyle: TextStyle(
                                    color: Get.find<controlleronoff>(tag: 'secend')
                                            .Themecolor[
                                        Get.find<controlleronoff>(tag: 'secend')
                                            .moodcolor]![2],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                                middleTextStyle: TextStyle(
                                    color: Get.find<controlleronoff>(tag: 'secend')
                                        .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                                middleText: 'پیامک فرستاده شود؟',
                                /*  onCancel: () => Get.,
                          textCancel: 'خیر', */
                                cancelTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                                confirmTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                                buttonColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                                textConfirm: 'بله',
                                onConfirm: () {
                                  Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .Relleh2
                                      .value = 'off';
                                  Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .updatePhone();
                                  if (Get.find<controllerphoneinfo>(tag: 'secend').TypeMicro.value=='Lx50'){
                                    final Telephony telephony =
                                      Telephony.instance;
                                  telephony.sendSms(
                                    to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                    message:
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*22*OFF#',
                                  );
                                  } else {
                                    final Telephony telephony =
                                      Telephony.instance;
                                  telephony.sendSms(
                                    to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                    message:
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*${Get.find<controllerphoneinfo>(tag:'secend').TypeMicro.value=='Old1000'?21:22}*OFF#',
                                  );
                                  }
                                  
                                  Get.back();
                                  Get.snackbar(
                                      'اطلاعیه', 'پیامک فرستاده شد');
                                  Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .startfifteensecends();
                                });
                          }
                        : () => Get.snackbar('خطا',
                            'هر 15 ثانیه یکبار درخواست ارسال کنید'),
          child: Obx(
           () {
              return Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                decoration: Get.find<controllerphoneinfo>(tag: 'secend')
                            .Relleh2
                            .value ==
                        'off'
                    ? boxdecoration1
                    : null,
                child: Center(
                  child: Text(
                    'غیر فعال',
                    textDirection: TextDirection.rtl,style: TextStyle(color: Colors.white,fontFamily: 'iransans'),
                  ),
                ),
              );
            }
          ),
        );
      }
    );
  }
}




class relleh2_opendoor extends StatelessWidget {
  const relleh2_opendoor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                  .fifteensecends
                  .value >=
              15
          ? () async {
              Get.defaultDialog(
                  backgroundColor: Get.find<controlleronoff>(tag: 'secend')
                          .Themecolor[
                      Get.find<controlleronoff>(tag: 'secend').moodcolor]![1],
                  title: 'هشدار',
                  titleStyle: TextStyle(
                      color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                          Get.find<controlleronoff>(tag: 'secend')
                              .moodcolor]![2],
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
                  cancelTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                  confirmTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                  buttonColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                  textConfirm: 'بله',
                  onConfirm: () {
                    print(
                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*20*2*${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[2]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[1]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[0]}#',
                    );
                    if (Get.find<controllerphoneinfo>(tag: 'secend')
                            .TypeMicro
                            .value ==
                        'Lx50') {
                      final Telephony telephony = Telephony.instance;
                      telephony.sendSms(
                        to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                        message:
                            '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*22*t${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[2]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[1]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[0]}#',
                      );
                    } else {
                      final Telephony telephony = Telephony.instance;
                      telephony.sendSms(
                        to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                        message:
                            '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*${Get.find<controllerphoneinfo>(tag:'secend').TypeMicro.value=='Old1000'?21:22}*t${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[3].split(',')[2]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[3].split(',')[1]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[3].split(',')[0]}#',
                      );
                    }

                    Get.back();
                    Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .startfifteensecends();
                  });
            }
          : () => Get.snackbar('خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
        decoration: boxdecoration1,
        child: Text(
          'درب بازکن',
          textDirection: TextDirection.rtl,
          style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
        ),
      ),
    );
  }
}
