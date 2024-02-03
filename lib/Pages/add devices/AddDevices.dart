// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:lux_security2/Pages/contacts/Contacts.dart';
import 'package:lux_security2/Pages/home%20page/HomePage.dart';
import 'package:lux_security2/Pages/option/Option.dart';

import '../../color.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';

class AddDevices extends StatefulWidget {
  const AddDevices({Key? key}) : super(key: key);

  @override
  State<AddDevices> createState() => _AddDevicesState();
}

class _AddDevicesState extends State<AddDevices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            color: Colors.grey[800],
            image: const DecorationImage(
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
              height: Get.height * 0.05,
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.8,
              child: Stack(
                children: [
                  const Align(
                      alignment: Alignment.bottomCenter, child: earth()),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: Get.width * 0.8,
                      height: Get.height * 0.8 + 50,
                      //color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            width: Get.width * 0.8,
                            // height: Get.height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0xFFBEBEBE),
                            ),
                            child: TextField(
                              controller:
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .textnamephone,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'نام دستگاه'),
                              style: const TextStyle(
                                  color: Colors.white, fontFamily: 'iransans'),
                            ),
                          ),
                          const SizedBox(height: 25),
                          Container(
                            width: Get.width * 0.8,
                            // height: Get.height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0xFFBEBEBE),
                            ),

                            child: TextField(
                              controller:
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .textphone,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'شماره تلفن دستگاه'),
                              style: const TextStyle(
                                  color: Colors.white, fontFamily: 'iransans'),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: Get.width * 0.8,
                            // height: Get.height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0xFFBEBEBE),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 2),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    onTap: () =>
                                        Get.find<controlleronoff>(tag: 'secend')
                                            .opretorsim
                                            .value = 'ir',
                                    child: Obx(() {
                                      return Container(
                                        width: Get.width * 0.24,
                                        decoration: Get.find<controlleronoff>(
                                                        tag: 'secend')
                                                    .opretorsim
                                                    .value ==
                                                'ir'
                                            ? boxdecoration1
                                            : null,
                                        //BoxDecoration(borderRadius: BorderRadius.circular(80),color: ),
                                        child: Center(
                                          child: Text(
                                            'ایرانسل',
                                            style: TextStyle(
                                              color: Get.find<controlleronoff>(
                                                              tag: 'secend')
                                                          .opretorsim
                                                          .value ==
                                                      'ir'
                                                  ? Colors.white
                                                  : const Color(0xFF9D9D9D),
                                              fontFamily: 'iransans',
                                            ),
                                            textDirection: TextDirection.rtl,
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                  InkWell(
                                    onTap: () =>
                                        Get.find<controlleronoff>(tag: 'secend')
                                            .opretorsim
                                            .value = 'ha',
                                    child: Obx(() {
                                      return Container(
                                        width: Get.width * 0.24,
                                        decoration: Get.find<controlleronoff>(
                                                        tag: 'secend')
                                                    .opretorsim
                                                    .value ==
                                                'ha'
                                            ? boxdecoration1
                                            : null,
                                        //BoxDecoration(borderRadius: BorderRadius.circular(80),color: ),
                                        child: Center(
                                          child: Text(
                                            'همراه اول',
                                            style: TextStyle(
                                              color: Get.find<controlleronoff>(
                                                              tag: 'secend')
                                                          .opretorsim
                                                          .value ==
                                                      'ha'
                                                  ? Colors.white
                                                  : const Color(0xFF9D9D9D),
                                              fontFamily: 'iransans',
                                            ),
                                            textDirection: TextDirection.rtl,
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                  InkWell(
                                    onTap: () =>
                                        Get.find<controlleronoff>(tag: 'secend')
                                            .opretorsim
                                            .value = 'rl',
                                    child: Obx(() {
                                      return Container(
                                        width: Get.width * 0.24,
                                        decoration: Get.find<controlleronoff>(
                                                        tag: 'secend')
                                                    .opretorsim
                                                    .value ==
                                                'rl'
                                            ? boxdecoration1
                                            : null,
                                        //BoxDecoration(borderRadius: BorderRadius.circular(80),color: ),
                                        child: Center(
                                          child: Text(
                                            'رایتل',
                                            style: TextStyle(
                                              color: Get.find<controlleronoff>(
                                                              tag: 'secend')
                                                          .opretorsim
                                                          .value ==
                                                      'rl'
                                                  ? Colors.white
                                                  : const Color(0xFF9D9D9D),
                                              fontFamily: 'iransans',
                                            ),
                                            textDirection: TextDirection.rtl,
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ]),
                          ),

                          ///
                          ///
                          ///
                          ///
                          const SizedBox(height: 20),
                          Container(
                            width: Get.width * 0.8,
                            // height: Get.height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0xFFBEBEBE),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 2),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  /*  InkWell(
                                    onTap: () =>
                                        Get.find<controlleronoff>(tag: 'secend')
                                            .TypeMicro
                                            .value = 'New1000',
                                    child: Obx(() {
                                      return Container(
                                        width: Get.width * 0.24,
                                        decoration: Get.find<controlleronoff>(
                                                        tag: 'secend')
                                                    .TypeMicro
                                                    .value ==
                                                'New1000'
                                            ? boxdecoration1
                                            : null,
                                        //BoxDecoration(borderRadius: BorderRadius.circular(80),color: ),
                                        child: Center(
                                          child: Text(
                                            'LX 1000(new)',
                                            style: TextStyle(
                                              color: Get.find<controlleronoff>(
                                                              tag: 'secend')
                                                          .TypeMicro
                                                          .value ==
                                                      'New1000'
                                                  ? Colors.white
                                                  : const Color(0xFF9D9D9D),
                                              fontFamily: 'iransans',
                                            ),
                                            textDirection: TextDirection.rtl,
                                          ),
                                        ),
                                      );
                                    }),
                                  ), */
                                  //
                                  //
                                  InkWell(
                                    onTap: () =>
                                        Get.find<controlleronoff>(tag: 'secend')
                                            .TypeMicro
                                            .value = 'Lx1000',
                                    child: Obx(() {
                                      return Container(
                                        width: Get.width * 0.24,
                                        decoration: Get.find<controlleronoff>(
                                                            tag: 'secend')
                                                        .TypeMicro
                                                        .value ==
                                                    'Lx1000' ||
                                                Get.find<controlleronoff>(
                                                            tag: 'secend')
                                                        .TypeMicro
                                                        .value ==
                                                    'Old1000'
                                            ? boxdecoration1
                                            : null,
                                        //BoxDecoration(borderRadius: BorderRadius.circular(80),color: ),
                                        child: Center(
                                          child: Text(
                                            'LX 1000',
                                            style: TextStyle(
                                              color: Get.find<controlleronoff>(
                                                                  tag: 'secend')
                                                              .TypeMicro
                                                              .value ==
                                                          'Lx1000' ||
                                                      Get.find<controlleronoff>(
                                                                  tag: 'secend')
                                                              .TypeMicro
                                                              .value ==
                                                          'Old1000'
                                                  ? Colors.white
                                                  : const Color(0xFF9D9D9D),
                                              fontFamily: 'iransans',
                                            ),
                                            textDirection: TextDirection.rtl,
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                  InkWell(
                                    onTap: () =>
                                        Get.find<controlleronoff>(tag: 'secend')
                                            .TypeMicro
                                            .value = 'Lx500',
                                    child: Obx(() {
                                      return Container(
                                        width: Get.width * 0.24,
                                        decoration: Get.find<controlleronoff>(
                                                        tag: 'secend')
                                                    .TypeMicro
                                                    .value ==
                                                'Lx500'
                                            ? boxdecoration1
                                            : null,
                                        //BoxDecoration(borderRadius: BorderRadius.circular(80),color: ),
                                        child: Center(
                                          child: Text(
                                            'LX 500',
                                            style: TextStyle(
                                              color: Get.find<controlleronoff>(
                                                              tag: 'secend')
                                                          .TypeMicro
                                                          .value ==
                                                      'Lx500'
                                                  ? Colors.white
                                                  : const Color(0xFF9D9D9D),
                                              fontFamily: 'iransans',
                                            ),
                                            textDirection: TextDirection.rtl,
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                  InkWell(
                                    onTap: () =>
                                        Get.find<controlleronoff>(tag: 'secend')
                                            .TypeMicro
                                            .value = 'Lx50',
                                    child: Obx(() {
                                      return Container(
                                        width: Get.width * 0.24,
                                        decoration: Get.find<controlleronoff>(
                                                        tag: 'secend')
                                                    .TypeMicro
                                                    .value ==
                                                'Lx50'
                                            ? boxdecoration1
                                            : null,
                                        //BoxDecoration(borderRadius: BorderRadius.circular(80),color: ),
                                        child: Center(
                                          child: Text(
                                            'LX 50',
                                            style: TextStyle(
                                              color: Get.find<controlleronoff>(
                                                              tag: 'secend')
                                                          .TypeMicro
                                                          .value ==
                                                      'Lx50'
                                                  ? Colors.white
                                                  : const Color(0xFF9D9D9D),
                                              fontFamily: 'iransans',
                                            ),
                                            textDirection: TextDirection.rtl,
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          lx1000old(),

                          InkWell(
                            onTap: () => Get.defaultDialog(
                                title: 'هشدار!',
                                middleText: 'از ساخت دستگاه مطمعن هستید؟',
                                textConfirm: 'بله',
                                backgroundColor: color3,
                                buttonColor: Colors.white,
                                titleStyle: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'iransans'),
                                middleTextStyle: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'iransans'),
                                confirmTextColor: color3,
                                onConfirm: () {
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .adddevice();
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .textnamephone
                                      .text = '';
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .textphone
                                      .text = '';

                                  Get.back();
                                  Get.snackbar(
                                      'توجه', 'دستگاه با موفقیت ساخته شد');
                                  Get.to(Contacts());
                                }),
                            child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: boxdecoration1,
                                child: const Center(
                                  child: Text(
                                    'ثبت دستگاه',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'iransans',
                                    ),
                                  ),
                                )),
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

class lx1000old extends StatefulWidget {
  const lx1000old({
    Key? key,
  }) : super(key: key);

  @override
  State<lx1000old> createState() => _lx1000oldState();
}

class _lx1000oldState extends State<lx1000old> {
  late bool check;
  @override
  void initState() {
    // TODO: implement initState
    check = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Visibility(
        visible: Get.find<controlleronoff>(tag: 'secend').TypeMicro.value ==
                'Lx1000' ||
            Get.find<controlleronoff>(tag: 'secend').TypeMicro.value ==
                'Old1000',
        child: Row(
          children: [
            Checkbox(
              value: check,
              checkColor: color3,
              onChanged: (value) {
                setState(() {
                  check = value!;
                });
                value == true
                    ? Get.find<controlleronoff>(tag: 'secend').TypeMicro.value =
                        'Old1000'
                    : Get.find<controlleronoff>(tag: 'secend').TypeMicro.value =
                        'Lx1000';
              },
              fillColor: MaterialStateColor.resolveWith(
                (Set<MaterialState> states) {
                  return Colors.white;
                },
              ),
            ),
            Text(
              'LX1000(old)',
              style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
            ),
          ],
        ),
      );
    });
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
                  'اضافه کردن دستگاه',
                  style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset('images/add.png'),
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
        ],
      ),
    );
  }
}
