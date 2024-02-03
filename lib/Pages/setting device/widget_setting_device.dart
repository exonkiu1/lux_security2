// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:lux_security2/Pages/setting%20device/function_device.dart';
import 'package:lux_security2/color.dart';
import 'package:telephony/telephony.dart';
//
///

class mode_alarm extends StatelessWidget {
  const mode_alarm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(() {
            return InkWell(
              onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                          .fifteensecends
                          .value >=
                      15
                  ? () => ModeAlert()
                  : () => Get.snackbar(
                      'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                decoration: boxdecoration1,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'ویرایش',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'iransans'),
                        textDirection: TextDirection.rtl,
                      ),
                      Row(
                        children: [
                          Obx(() {
                            List<String> modealarm = [
                              'ابتدا پیامک سپس تماس با تکرار',
                              'ابتدا تماس سپس پیامک با تکرار',
                              'ابندا پیامک سپس تماس',
                              'ابتدا تماس سپس پیامک',
                            ];
                            return Text(
                              '${modealarm[int.parse(Get.find<controllerphoneinfo>(tag: 'secend').MoodAlarm.value)]}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'iransans'),
                              textDirection: TextDirection.rtl,
                            );
                          }),
                          Text(
                            'مقدار فعلی:',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'iransans'),
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
          Text(
            'مد آلارم',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'iransans',
                fontSize: 16),
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}

///
///
///
class time_alarm extends StatelessWidget {
  const time_alarm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(() {
            return InkWell(
              onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                          .fifteensecends
                          .value >=
                      15
                  ? () => TimeAlert()
                  : () => Get.snackbar(
                      'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                decoration: boxdecoration1,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'ویرایش',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'iransans'),
                        textDirection: TextDirection.rtl,
                      ),
                      Row(
                        children: [
                          Obx(() {
                            return Text(
                              '${Get.find<controllerphoneinfo>(tag: 'secend').AlarmTime.value}دقیقه',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'iransans'),
                              textDirection: TextDirection.rtl,
                            );
                          }),
                          Text(
                            'مقدار فعلی:',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'iransans'),
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
          Text(
            'زمان آژیر',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'iransans',
                fontSize: 16),
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}


class report_inventory extends StatelessWidget {
  const report_inventory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(() {
            return InkWell(
              onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                          .fifteensecends
                          .value >=
                      15
                  ? () => Reportsim()
                  : () => Get.snackbar(
                      'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                decoration: boxdecoration1,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'ویرایش',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'iransans'),
                        textDirection: TextDirection.rtl,
                      ),
                      Row(
                        children: [
                          Obx(() {
                            return Text(
                              '${Get.find<controllerphoneinfo>(tag: 'secend').PeriodicInventoryReport.value}پیامک',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'iransans'),
                              textDirection: TextDirection.rtl,
                            );
                          }),
                          Text(
                            'مقدار فعلی:',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'iransans'),
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
          Text(
            'گزارش دوره ای موجودی',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'iransans',
                fontSize: 16),
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}

//


class report_batery extends StatelessWidget {
  const report_batery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(() {
            return InkWell(
              onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                          .fifteensecends
                          .value >=
                      15
                  ? () => Reportbatery()
                  : () => Get.snackbar(
                      'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                decoration: boxdecoration1,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'ویرایش',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'iransans'),
                        textDirection: TextDirection.rtl,
                      ),
                      Row(
                        children: [
                          Obx(() {
                            return Text(
                              '${Get.find<controllerphoneinfo>(tag: 'secend').PeriodicBatteryReport.value}پیامک',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'iransans'),
                              textDirection: TextDirection.rtl,
                            );
                          }),
                          Text(
                            'مقدار فعلی:',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'iransans'),
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
          Text(
            'گزارش دوره ای باتری',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'iransans',
                fontSize: 16),
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
//
class language_device extends StatelessWidget {
  const language_device({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      decoration: BoxDecoration(
          color: color4, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
         () {
              return InkWell(
                onTap:   Get.find<controllerphoneinfo>(
                                  tag: 'secend')
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
                              onConfirm: () async {
                                Get.find<controllerphoneinfo>(
                                        tag: 'secend')
                                    .Language
                                    .value = 'fri';
      
                                final Telephony telephony =
                                    Telephony.instance;
                                telephony.sendSms(
                                  to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                  message:
                                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*F0#',
                                );
                                Get.back();
                                await Get.find<controllerphoneinfo>(
                                        tag: 'secend')
                                    .updatePhone();
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
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                      decoration: Get.find<controllerphoneinfo>(tag: 'secend')
                                  .Language
                                  .value ==
                              'fri'
                          ? boxdecoration1
                          : null,
                      child: Center(
                        child: Text(
                          'فارسی',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'iransans'),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    );
                  }
                ),
              );
            }
          ),
          SizedBox(
            width: 5,
          ),
          Obx(
          (){
              return InkWell(
                onTap: Get.find<controllerphoneinfo>(
                                  tag: 'secend')
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
                              onConfirm: () async {
                                Get.find<controllerphoneinfo>(
                                        tag: 'secend')
                                    .Language
                                    .value = 'eng';
      
                                final Telephony telephony =
                                    Telephony.instance;
                                telephony.sendSms(
                                  to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                  message:
                                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*F1#',
                                );
                                Get.back();
                                await Get.find<controllerphoneinfo>(
                                        tag: 'secend')
                                    .updatePhone();
                                Get.snackbar(
                                    'اطلاعیه', 'پیامک فرستاده شد');
                                Get.find<controllerphoneinfo>(
                                        tag: 'secend')
                                    .startfifteensecends();
                              });
                        }
                      : () => Get.snackbar('خطا',
                          'هر 15 ثانیه یکبار درخواست ارسال کنید'),

                child: Obx(() {
                  return Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                    decoration: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Language
                                .value ==
                            'eng'
                        ? boxdecoration1
                        : null,
                    child: Center(
                      child: Text(
                        'انگلیسی',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'iransans'),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  );
                }),
              );
            }
          )
        ],
      ),
    );
  }
}
//


class call_outage_power extends StatelessWidget {
  const call_outage_power({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      decoration: BoxDecoration(
          color: color4, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
          () {
              return InkWell(
                onTap:  Get.find<controllerphoneinfo>(
                                  tag: 'secend')
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
                              onConfirm: () async {
                                Get.find<controllerphoneinfo>(
                                        tag: 'secend')
                                    .CallOnElectricity
                                    .value = 'on';

                                final Telephony telephony =
                                    Telephony.instance;
                                telephony.sendSms(
                                  to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                  message:
                                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*55*1#',
                                );
                                Get.back();
                                await Get.find<controllerphoneinfo>(
                                        tag: 'secend')
                                    .updatePhone();
                                Get.snackbar(
                                    'اطلاعیه', 'پیامک فرستاده شد');
                                Get.find<controllerphoneinfo>(
                                        tag: 'secend')
                                    .startfifteensecends();
                              });
                        }
                      : () => Get.snackbar('خطا',
                          'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                child: Obx(() {
                  return Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                    decoration: Get.find<controllerphoneinfo>(tag: 'secend')
                                .CallOnElectricity
                                .value ==
                            'on'
                        ? boxdecoration1
                        : null,
                    child: Center(
                        child: Text(
                      'فعال',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'iransans'),
                      textDirection: TextDirection.rtl,
                    )),
                  );
                }),
              );
            }
          ),
          Obx(
           () {
              return InkWell(
                onTap:  Get.find<controllerphoneinfo>(
                                  tag: 'secend')
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
                              onConfirm: () async {
                                Get.find<controllerphoneinfo>(
                                        tag: 'secend')
                                    .CallOnElectricity
                                    .value = 'off';

                                final Telephony telephony =
                                    Telephony.instance;
                                telephony.sendSms(
                                  to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                  message:
                                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*55*0#',
                                );
                                Get.back();
                                await Get.find<controllerphoneinfo>(
                                        tag: 'secend')
                                    .updatePhone();
                                Get.snackbar(
                                    'اطلاعیه', 'پیامک فرستاده شد');
                                Get.find<controllerphoneinfo>(
                                        tag: 'secend')
                                    .startfifteensecends();
                              });
                        }
                      : () => Get.snackbar('خطا',
                          'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                child: Obx(() {
                  return Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                    decoration: Get.find<controllerphoneinfo>(tag: 'secend')
                                .CallOnElectricity
                                .value ==
                            'off'
                        ? boxdecoration1
                        : null,
                    child: Center(
                        child: Text(
                      'غیر فعال',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'iransans'),
                      textDirection: TextDirection.rtl,
                    )),
                  );
                }),
              );
            }
          )
        ],
      ),
    );
  }
}
//


class half_remote extends StatelessWidget {
  const half_remote({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      decoration: BoxDecoration(
          color: color4, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () {
              return InkWell(
                onTap:  Get.find<controllerphoneinfo>(
                     tag: 'secend')
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
                 onConfirm: () async {
                   Get.find<controllerphoneinfo>(
                           tag: 'secend')
                       .HalfOnRemote
                       .value = 'on';

                   final Telephony telephony =
                       Telephony.instance;
                   telephony.sendSms(
                     to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                     message:
                         '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*51*1#',
                   );
                   Get.back();
                   await Get.find<controllerphoneinfo>(
                           tag: 'secend')
                       .updatePhone();
                   Get.snackbar(
                       'اطلاعیه', 'پیامک فرستاده شد');
                   Get.find<controllerphoneinfo>(
                           tag: 'secend')
                       .startfifteensecends();
                 });
       }
     : () => Get.snackbar('خطا',
         'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                child: Obx(() {
                  return Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                    decoration: Get.find<controllerphoneinfo>(tag: 'secend')
                                .HalfOnRemote
                                .value ==
                            'on'
                        ? boxdecoration1
                        : null,
                    child: Center(
                        child: Text(
                      'فعال',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'iransans'),
                      textDirection: TextDirection.rtl,
                    )),
                  );
                }),
              );
            }
          ),
          Obx(
           () {
              return InkWell(
                onTap: Get.find<controllerphoneinfo>(
                     tag: 'secend')
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
                 onConfirm: () async {
                   Get.find<controllerphoneinfo>(
                           tag: 'secend')
                       .HalfOnRemote
                       .value = 'off';

                   final Telephony telephony =
                       Telephony.instance;
                   telephony.sendSms(
                     to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                     message:
                         '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*51*0#',
                   );
                   Get.back();
                   await Get.find<controllerphoneinfo>(
                           tag: 'secend')
                       .updatePhone();
                   Get.snackbar(
                       'اطلاعیه', 'پیامک فرستاده شد');
                   Get.find<controllerphoneinfo>(
                           tag: 'secend')
                       .startfifteensecends();
                 });
       }
     : () => Get.snackbar('خطا',
         'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                child: Obx(() {
                  return Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                    decoration: Get.find<controllerphoneinfo>(tag: 'secend')
                                .HalfOnRemote
                                .value ==
                            'off'
                        ? boxdecoration1
                        : null,
                    child: Center(
                        child: Text(
                      'غیر فعال',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'iransans'),
                      textDirection: TextDirection.rtl,
                    )),
                  );
                }),
              );
            }
          ),
        ],
      ),
    );
  }
}
