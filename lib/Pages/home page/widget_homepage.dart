
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:lux_security2/Pages/home%20page/shape.dart';
import 'package:lux_security2/Pages/option/Option.dart';
import 'package:lux_security2/Pages/test%20page/TestPage1.dart';
import 'package:telephony/telephony.dart';

import '../../color.dart';

OnOff(String code,String onoff)=>
  Get.find<controllerphoneinfo>(tag: 'secend')
                          .fifteensecends
                          .value >=
                      15
              ? () async {
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
                            Get.back();
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .OnPhones
                                .value = onoff;
                            final Telephony telephony = Telephony.instance;
                            telephony.sendSms(
                              to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                              message:
                                  '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*$code#',
                            );
                            await Get.find<controllerphoneinfo>(
                                    tag: 'secend')
                                .updatePhone();
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .startfifteensecends();
                            Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                          });
                }
              : () => Get.snackbar(
                      'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید');


class halfon_silent extends StatelessWidget {
  const halfon_silent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
     () {
        return Visibility(
          visible: Get.find<controllerphoneinfo>(tag: 'secend').TypeMicro.value!='Lx50'?true:false,
          child: Positioned(
            left: Get.width * 0.15,
            right: Get.width * 0.15,
            //right: Get.width * 0.4,
            bottom: 10,
            child: Container(
              width: Get.width * 0.7,
              height: Get.height * 0.07,
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage('images/Subtract.png'))
                  //color: color4
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () {
                      return InkWell(
                        onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                          .fifteensecends
                          .value >=
                      15
              ? () async {
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
                            Get.back();
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .OnPhones
                                .value = 'silent';
                            final Telephony telephony = Telephony.instance;
                            telephony.sendSms(
                              to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                              message:
                                  '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*12#',
                            );
                            await Get.find<controllerphoneinfo>(
                                    tag: 'secend')
                                .updatePhone();
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .startfifteensecends();
                            Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                          });
                }
              : () => Get.snackbar(
                      'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Obx(
                         () {
                              return Container(
                                width: Get.width * 0.25,
                                decoration: Get.find<controllerphoneinfo>(tag: 'secend').OnPhones.value=='silent'?
                                boxdecoration1:null,
                                child: Center(
                                  child: Text(
                                    'سایلنت',
                                    style: TextStyle(
                                        color: Colors.grey[900],
                                        fontFamily: 'iransans',
                                        fontWeight: FontWeight.bold),
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                              );
                            }
                          ),
                        ),
                      );
                    }
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Obx(
                      () {
                        return InkWell(
                          onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                          .fifteensecends
                          .value >=
                  15
              ? () async {
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
                            Get.back();
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .OnPhones
                                .value = 'halfon';
                            final Telephony telephony = Telephony.instance;
                            telephony.sendSms(
                              to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                              message:
                                  '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*13#',
                            );
                            await Get.find<controllerphoneinfo>(
                                    tag: 'secend')
                                .updatePhone();
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .startfifteensecends();
                            Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                          });
                }
              : () => Get.snackbar(
                  'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                          child: Obx(
                          (){
                              return Container(
                                width: Get.width * 0.25,
                                decoration: Get.find<controllerphoneinfo>(tag: 'secend').OnPhones.value=='halfon'?boxdecoration1:null,
                                child: Center(
                                  child: Text(
                                    'نیمه فعال',
                                    style: TextStyle(
                                        color: Colors.grey[900],
                                        fontFamily: 'iransans',
                                        fontWeight: FontWeight.bold),
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                              );
                            }
                          ),
                        );
                      }
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}