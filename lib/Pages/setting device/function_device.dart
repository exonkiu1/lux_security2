// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';

import 'package:get/get.dart';
import 'package:telephony/telephony.dart';

//
//
//
//TimeAlert
//
//
//

void TimeAlert() {
  TextEditingController alaemtime = TextEditingController();
  Get.defaultDialog(
    backgroundColor: Get.find<controlleronoff>(tag: 'secend')
        .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![1],
    title: 'تغییر زمان آژیر',
    titleStyle: TextStyle(
        color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
            Get.find<controlleronoff>(tag: 'secend').moodcolor]![2]),
    content: Container(
      width: Get.width * 0.7,
      child: Column(
        children: [
          Text(
            'زمان به صدا در آمدن آژیر را به دقیقه وارد کنید',
            style: TextStyle(
                color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![0]),
          ),
          TextField(
            autofocus: true,
            controller: alaemtime,
            keyboardType: TextInputType.phone,
            cursorColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
            style: TextStyle(
                color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                fontSize: 20),
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color:
                          Get.find<controlleronoff>(tag: 'secend').Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![2]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color:
                          Get.find<controlleronoff>(tag: 'secend').Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0]),
                ),
                hintText: 'زمان آژیر به دقیقه',
                hintStyle: TextStyle(
                    color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                        Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                    fontSize: 16)),
          ),
          InkWell(
            onTap: () async {
              Get.back();
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
                  onConfirm: () async {
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .AlarmTime
                        .value = '${alaemtime.text}';

                    final Telephony telephony = Telephony.instance;
                    telephony.sendSms(
                      to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                      message:
                          '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*41*${alaemtime.text}#',
                    );
                    Get.back();
                    await Get.find<controllerphoneinfo>(tag: 'secend')
                        .updatePhone();
                    Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .startfifteensecends();
                  });
            },
            child: Container(
              decoration: BoxDecoration(
                color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Text(
                'تایید',
                style: TextStyle(
                    color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                        Get.find<controlleronoff>(tag: 'secend')
                            .moodcolor]![2]),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
//
//
//ModeAlart
//
//

void ModeAlert() {
  List<String> modealarm = [
    'ابتدا پیامک سپس تماس با تکرار',
    'ابتدا تماس سپس پیامک با تکرار',
    'ابندا پیامک سپس تماس',
    'ابتدا تماس سپس پیامک',
  ];
  Get.defaultDialog(
      backgroundColor: Get.find<controlleronoff>(tag: 'secend')
          .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![1],
      title: 'مد آلارم',
      titleStyle: TextStyle(
        color: Get.find<controlleronoff>(tag: 'secend')
            .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
      ),
      content: Container(
          width: Get.width * 0.7,
          child: Column(
            children: [
              Text(
                ' یکی از گزینه های زیر را برای تعیین مد آلارم انتخاب کنید',
                style: TextStyle(
                    color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                        Get.find<controlleronoff>(tag: 'secend')
                            .moodcolor]![0]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                    children: List.generate(modealarm.length, (index) {
                  return InkWell(
                    onTap: () async {
                      Get.back();
                      Get.defaultDialog(
                          backgroundColor:
                              Get.find<controlleronoff>(tag: 'secend').Themecolor[
                                  Get.find<controlleronoff>(tag: 'secend')
                                      .moodcolor]![1],
                          title: 'هشدار',
                          titleStyle: TextStyle(
                              color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
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
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .MoodAlarm
                                .value = '$index';

                            final Telephony telephony = Telephony.instance;
                            if (index == 0 || index == 1) {
                              telephony.sendSms(
                                to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                message:
                                    '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*55*${index}#',
                              );
                              Get.back();
                              Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                            } else {
                              telephony.sendSms(
                                to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                message:
                                    '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*55*${index + 4}#',
                              );
                              Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                            }
                            await Get.find<controllerphoneinfo>(tag: 'secend')
                                .updatePhone();
                            Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                            Get.back();
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .startfifteensecends();
                          });
                    },
                    child: Obx(() {
                      return Container(
                          width: 300,
                          padding: EdgeInsets.all(5.0),
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              color: Get.find<controllerphoneinfo>(tag: 'secend').MoodAlarm.value == '$index'
                                  ? Get.find<controlleronoff>(tag: 'secend').Themecolor[
                                      Get.find<controlleronoff>(tag: 'secend')
                                          .moodcolor]![0]
                                  : Get.find<controlleronoff>(tag: 'secend').Themecolor[
                                      Get.find<controlleronoff>(tag: 'secend')
                                          .moodcolor]![1],
                              border: Border.all(
                                  color: Get.find<controlleronoff>(tag: 'secend')
                                      .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0]),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text(
                              modealarm[index],
                              style: TextStyle(
                                color: Get.find<controlleronoff>(tag: 'secend')
                                        .Themecolor[
                                    Get.find<controlleronoff>(tag: 'secend')
                                        .moodcolor]![2],
                              ),
                            ),
                          ));
                    }),
                  );
                })),
              )
            ],
          )));
}

//
//
//
//Reportbatery
//
//
//
void Reportbatery() {
  TextEditingController reportbatry = TextEditingController();
  Get.defaultDialog(
    backgroundColor: Get.find<controlleronoff>(tag: 'secend')
        .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![1],
    title: 'گزارش دوره ای باتری',
    titleStyle: TextStyle(
        color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
            Get.find<controlleronoff>(tag: 'secend').moodcolor]![2]),
    content: Container(
      width: Get.width * 0.7,
      child: Column(
        children: [
          Text(
            'تعیین کنید که بعد از چند دقیقه گزارش  شارژ باتری برای شما ارسال شود',
            style: TextStyle(
                color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![0]),
          ),
          TextField(
            autofocus: true,
            controller: reportbatry,
            keyboardType: TextInputType.phone,
            cursorColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
            style: TextStyle(
                color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                fontSize: 20),
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color:
                          Get.find<controlleronoff>(tag: 'secend').Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![2]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color:
                          Get.find<controlleronoff>(tag: 'secend').Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0]),
                ),
                hintText: 'دقیقه',
                hintStyle: TextStyle(
                    color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                        Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                    fontSize: 16)),
          ),
          InkWell(
            onTap: () async {
              Get.back();
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
                  onConfirm: () async {
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .PeriodicBatteryReport
                        .value = '${reportbatry.text}';

                    final Telephony telephony = Telephony.instance;
                    telephony.sendSms(
                      to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                      message:
                          '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*44*${reportbatry.text}#',
                    );
                    Get.back();
                    await Get.find<controllerphoneinfo>(tag: 'secend')
                        .updatePhone();
                    Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .startfifteensecends();
                  });
            },
            child: Container(
              decoration: BoxDecoration(
                color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Text(
                'تایید',
                style: TextStyle(
                    color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                        Get.find<controlleronoff>(tag: 'secend')
                            .moodcolor]![2]),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

//
//
//
//Reportsim
//
//
//
//
Reportsim() {
  TextEditingController reportsms = TextEditingController();
  Get.defaultDialog(
    backgroundColor: Get.find<controlleronoff>(tag: 'secend')
        .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![1],
    title: 'گزارش دوره ای موجودی',
    titleStyle: TextStyle(
        color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
            Get.find<controlleronoff>(tag: 'secend').moodcolor]![2]),
    content: Container(
      width: Get.width * 0.7,
      child: Column(
        children: [
          Text(
            'تعیین کنید که بعد از چند پیامک گزارش موجودی شارژ برای شما ارسال شود',
            style: TextStyle(
                color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![0]),
          ),
          TextField(
            autofocus: true,
            controller: reportsms,
            keyboardType: TextInputType.phone,
            cursorColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
            style: TextStyle(
                color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                fontSize: 20),
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color:
                          Get.find<controlleronoff>(tag: 'secend').Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![2]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color:
                          Get.find<controlleronoff>(tag: 'secend').Themecolor[
                              Get.find<controlleronoff>(tag: 'secend')
                                  .moodcolor]![0]),
                ),
                hintText: 'تعداد پیامک',
                hintStyle: TextStyle(
                    color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                        Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                    fontSize: 16)),
          ),
          InkWell(
            onTap: () async {
              Get.back();
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
                  onConfirm: () async {
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .PeriodicInventoryReport
                        .value = '${reportsms.text}';

                    final Telephony telephony = Telephony.instance;
                    telephony.sendSms(
                      to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                      message:
                          '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*43*${reportsms.text}#',
                    );
                    Get.back();
                    await Get.find<controllerphoneinfo>(tag: 'secend')
                        .updatePhone();
                    Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .startfifteensecends();
                  });
            },
            child: Container(
              decoration: BoxDecoration(
                color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                    Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Text(
                'تایید',
                style: TextStyle(
                    color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                        Get.find<controlleronoff>(tag: 'secend')
                            .moodcolor]![2]),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
