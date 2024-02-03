// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:lux_security2/Pages/home%20page/HomePage.dart';
import 'package:lux_security2/Pages/option/name_column.dart';
import 'package:telephony/telephony.dart';

import '../../color.dart';

class Option extends StatefulWidget {
  const Option({Key? key}) : super(key: key);

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            color: Colors.grey[800],
            image: DecorationImage(
                image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SafeArea(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: tabbar(),
            )),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.83,
              child: Stack(
                children: [
                  Align(alignment: Alignment.bottomCenter, child: earth()),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: Get.width * 0.5,
                      height: Get.height * 0.8 + 50,
                      //color: Colors.white,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Obx(() {
                                return Column(
                                  children: List.generate(
                                      Get.find<controllerphoneinfo>(
                                                          tag: 'secend')
                                                      .TypeMicro
                                                      .value !=
                                                  'Lx50' 
                                          ? NameOption.length - 1
                                          : NameOption.length - 4,
                                      (index) => InkWell(
                                            onTap: () =>
                                              //  Get.toNamed(routOption[index], ),
                                                Get.to(routOption1[index],duration:Duration(milliseconds: 100)),
                                            child: Container(
                                              width: Get.width * 0.5,
                                              margin:
                                                  EdgeInsets.only(bottom: 20),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Image.asset(
                                                      'images/${IconOption[index]}.png'),
                                                  Text(
                                                    NameOption[index],
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: 'iransans',
                                                    ),
                                                    textDirection:
                                                        TextDirection.rtl,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )),
                                );
                              }),
                              Obx(
                                () {
                                  return Visibility(
                                    visible: Get.find<controllerphoneinfo>(tag: 'secend').TypeMicro.value != 'Lx50'?true:false,
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
                                                             
                                                              final Telephony telephony = Telephony.instance;
                                                              telephony.sendSms(
                                        to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                        message:
                                            '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*62#',
                                                              );
                                                             
                                                              Get.find<controllerphoneinfo>(tag: 'secend')
                                          .startfifteensecends();
                                                              Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                                                            });
                                                  }
                                                : () => Get.snackbar(
                                                        'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                                          child: Container(
                                            width: Get.width * 0.5,
                                            margin: EdgeInsets.only(bottom: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Image.asset(
                                                    'images/${IconOption[NameOption.length - 1]}.png'),
                                                Text(
                                                  NameOption[NameOption.length - 1],
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'iransans',
                                                  ),
                                                  textDirection: TextDirection.rtl,
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }
                                    ),
                                  );
                                }
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class earth extends StatelessWidget {
  const earth({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.5,
      //color: Colors.white.withOpacity(0.5),
      child: Stack(
        children: [
          Positioned(
            top: Get.height * 0.15,
            child: Image.asset(
              'images/star.png',
              width: Get.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: Get.height * 0.25,
            child: Image.asset(
              'images/earth.png',
              width: Get.width,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                Get.bottomSheet(Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Center(
                    child: Obx(() {
                      return Column(
                        mainAxisAlignment:
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                        .lenghtmainpage
                                        .value <=
                                    1
                                ? MainAxisAlignment.center
                                : MainAxisAlignment.start,
                        children: [
                          Get.find<controllerphoneinfo>(tag: 'secend')
                                      .lenghtmainpage
                                      .value ==
                                  0
                              ? Text(
                                  'فعلا شما هیچ دستگاهی  ندارید!!',
                                  style: TextStyle(fontFamily: 'iransans'),
                                )
                              : Get.find<controllerphoneinfo>(tag: 'secend')
                                          .lenghtmainpage
                                          .value ==
                                      1
                                  ? Text(
                                      'فعلا شما همین دستگاهی را دارید!!',
                                      style: TextStyle(fontFamily: 'iransans'),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Text(
                                        'از بین دستگاه های زیر انتخاب کنید',
                                        style: TextStyle(
                                            fontFamily: 'iransans',
                                            color: color3),
                                      ),
                                    ),
                          Obx(() {
                            return Visibility(
                                visible:
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                                .lenghtmainpage
                                                .value >
                                            1
                                        ? true
                                        : false,
                                child: SingleChildScrollView(child: Obx(() {
                                  return Column(
                                      children: List.generate(
                                          Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .lenghtmainpage
                                              .value,
                                          (index) => InkWell(
                                                onTap: () {
                                                  Get.find<controllerphoneinfo>(
                                                          tag: 'secend')
                                                      .changepage(index);
                                                  Get.back();
                                                },
                                                child: Container(
                                                  margin: EdgeInsets.all(10),
                                                  width: Get.width * 0.7,
                                                  decoration: boxdecoration1,
                                                  child: Center(
                                                    child: Text(
                                                      Get.find<controllerphoneinfo>(
                                                              tag: 'secend')
                                                          .phoness[index]
                                                          .Name,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily:
                                                              'iransans'),
                                                    ),
                                                  ),
                                                ),
                                              )));
                                })));
                          })
                        ],
                      );
                    }),
                  ),
                ));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 282,
                  height: 53 + 30,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 282,
                          height: 53,
                          child: Stack(
                            children: [
                              Align(
                                child: Image.asset(
                                  'images/Subtract-2.png',
                                  /*    width: Get.width * 0.8,
                                  height: Get.height * 0.078,
                                  fit: BoxFit.fill, */
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 24),
                                  child: Obx(() {
                                    return Text(
                                      Get.find<controllerphoneinfo>(
                                                      tag: 'secend')
                                                  .lenghtmainpage
                                                  .value ==
                                              0
                                          ? 'نام دستگاه'
                                          : Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .Name
                                              .value,
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'iransans'),
                                      //textAlign: TextAlign.left,
                                    );
                                  }),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 33),
                            child: Image.asset('images/profile-circle-2.png'),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

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
                  'امکانات',
                  style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset('images/setting-2-2.png'),
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
