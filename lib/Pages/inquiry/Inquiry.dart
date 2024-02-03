// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:lux_security2/Getxcontroller/controllershow.dart';
import 'package:lux_security2/color.dart';

class Inquiry extends StatefulWidget {
  const Inquiry({Key? key}) : super(key: key);

  @override
  State<Inquiry> createState() => _InquiryState();
}

class _InquiryState extends State<Inquiry> {
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
                // ignore: prefer_const_constructors
                SafeArea(
                    child: tabbar(
                  image: 'images/refresh-2.png',
                  name: 'استعلام',
                )),
                const SizedBox(height: 20),
                Container(
                  width: Get.width * 0.6,
                  child: Column(
                    children: [
                      Obx(() {
                        return Visibility(
                          visible: Get.find<controlleronoff>(tag: 'secend')
                              .InquiryAll
                              .value,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                          replacement: InkWell(
                            onTap: () =>
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .inquryall(),
                            child: Container(
                              decoration: boxdecoration1,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Center(
                                child: Text('استعلام دستگاه',
                                    style: TextStyle(
                                        color: Get.find<controllerphoneinfo>(
                                                        tag: 'secend')
                                                    .Anten
                                                    .value ==
                                                'o'
                                            ? Colors.white
                                            : Colors.white,
                                        fontFamily: 'iransans'),
                                    textDirection: TextDirection.rtl),
                              ),
                            ),
                          ),
                        );
                      }),
                      Column(
                        children: List.generate(
                            statusAll.length, (index) => statusAll[index]),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}

List<Widget> statusAll = [
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(() {
          if (Get.find<controllerphoneinfo>(tag: 'secend').OnPhones.value ==
              'on') {
            return Text(
              'فعال',
              style: TextStyle(
                  color: Get.find<controllerphoneinfo>(tag: 'secend')
                              .Anten
                              .value ==
                          'o'
                      ? Colors.white
                      : Colors.white,
                  fontFamily: 'iransans'),
              textDirection: TextDirection.rtl,
            );
          } else {
            if (Get.find<controllerphoneinfo>(tag: 'secend').OnPhones.value ==
                'off') {
              return Text(
                'غیر فعال',
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
                textDirection: TextDirection.rtl,
              );
            } else {
              if (Get.find<controllerphoneinfo>(tag: 'secend').OnPhones.value ==
                  'halfon') {
                return Text(
                  'نیمه فعال',
                  style: TextStyle(
                      color: Get.find<controllerphoneinfo>(tag: 'secend')
                                  .Anten
                                  .value ==
                              'o'
                          ? Colors.white
                          : Colors.white,
                      fontFamily: 'iransans'),
                  textDirection: TextDirection.rtl,
                );
              } else {
                return Text(
                  'سایلنت',
                  style: TextStyle(
                      color: Get.find<controllerphoneinfo>(tag: 'secend')
                                  .Anten
                                  .value ==
                              'o'
                          ? Colors.white
                          : Colors.white,
                      fontFamily: 'iransans'),
                  textDirection: TextDirection.rtl,
                );
              }
            }
          }
        }),
        Obx(() {
          return Text(
            'وضعیت',
            style: TextStyle(
                color:
                    Get.find<controllerphoneinfo>(tag: 'secend').Anten.value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                fontFamily: 'iransans'),
            textDirection: TextDirection.rtl,
          );
        })
      ],
    ),
  ),
  Obx(() {
    return Visibility(
      visible: Get.find<controllershow>(tag: 'secend').showf[0].value,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              return Text(
                '${Get.find<controllerphoneinfo>(tag: 'secend').VoltAc.value}',
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
                textDirection: TextDirection.rtl,
              );
            }),
            Obx(() {
              return Text(
                'بــــرق شــهر',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
              );
            })
          ],
        ),
      ),
    );
  }),
  Obx(() {
    return Visibility(
      visible: Get.find<controllershow>(tag: 'secend').showf[1].value,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              return Text(
                // textAlign: Alignment.centerRight,
                '${Get.find<controllerphoneinfo>(tag: 'secend').Speaker.value}',
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
                textDirection: TextDirection.rtl,
              );
            }),
            Obx(() {
              return Text(
                'بلندگو',
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
                textDirection: TextDirection.rtl,
              );
            }),
          ],
        ),
      ),
    );
  }),
  Obx(() {
    return Visibility(
      visible: Get.find<controllershow>(tag: 'secend').showf[6].value,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              return Text(
                '${Get.find<controllerphoneinfo>(tag: 'secend').Voltbatry.value}',
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
                textDirection: TextDirection.rtl,
              );
            }),
            Obx(() {
              return Text(
                ' ولتاژ باتری',
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
                textDirection: TextDirection.rtl,
              );
            }),
          ],
        ),
      ),
    );
  }),
  Obx(() {
    return Visibility(
      visible: Get.find<controllershow>(tag: 'secend').showf[7].value,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              return Text(
                '${Get.find<controllerphoneinfo>(tag: 'secend').StatusRelleh.value}',
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
                textDirection: TextDirection.rtl,
              );
            }),
            Obx(() {
              return Text(
                'رله',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
              );
            }),
          ],
        ),
      ),
    );
  }),
  /* Obx(() {
    return Visibility(
      visible: Get.find<controllershow>(tag: 'secend').showf[8].value,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              return Text(
                '${Get.find<controllerphoneinfo>(tag: 'secend').StatusRelleh2.value}',
                style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'iransans'),
                textDirection: TextDirection.rtl,
              );
            }),
            Obx(() {
              return Text(
                '2رله',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'iransans'),
              );
            }),
          ],
        ),
      ),
    );
  }), */
  Obx(() {
    return Visibility(
      visible: Get.find<controllershow>(tag: 'secend').showf[4].value,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              return Text(
                '${Get.find<controllerphoneinfo>(tag: 'secend').CountConuntect.value}',
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
                textDirection: TextDirection.rtl,
              );
            }),
            Obx(() {
              return Text(
                'تعداد مخاطبین',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
              );
            })
          ],
        ),
      ),
    );
  }),
  Obx(() {
    return Visibility(
      visible: Get.find<controllershow>(tag: 'secend').showf[2].value,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              return Text(
                '${Get.find<controllerphoneinfo>(tag: 'secend').Countremote.value}',
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
                textDirection: TextDirection.rtl,
              );
            }),
            Obx(() {
              return Text(
                'تعداد ریموت',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
              );
            }),
          ],
        ),
      ),
    );
  }),
  Obx(() {
    return Visibility(
      visible: Get.find<controllershow>(tag: 'secend').showf[3].value,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              return Text(
                '${Get.find<controllerphoneinfo>(tag: 'secend').Anten.value}',
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
                textDirection: TextDirection.rtl,
              );
            }),
            Obx(() {
              return Text(
                'قدرت آنتن',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
              );
            }),
          ],
        ),
      ),
    );
  }),
  Obx(() {
    return Visibility(
      visible: Get.find<controllershow>(tag: 'secend').showf[5].value,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              return Text(
                '${Get.find<controllerphoneinfo>(tag: 'secend').StatusNetwork.value}',
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
                textDirection: TextDirection.rtl,
              );
            }),
            Obx(() {
              return Text(
                'وضعیت شبکه',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
              );
            }),
          ],
        ),
      ),
    );
  }),
  Obx(() {
    return Visibility(
      visible: Get.find<controllershow>(tag: 'secend').showf[12].value,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              if (Get.find<controllerphoneinfo>(tag: 'secend')
                      .Statuszoons
                      .value[0] ==
                  '1') {
                return Text(
                  'بسته',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Get.find<controllerphoneinfo>(tag: 'secend')
                                  .Anten
                                  .value ==
                              'o'
                          ? Colors.white
                          : Colors.white,
                      fontFamily: 'iransans'),
                );
              } else {
                return Text(
                  'باز',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Get.find<controllerphoneinfo>(tag: 'secend')
                                  .Anten
                                  .value ==
                              'o'
                          ? Colors.white
                          : Colors.white,
                      fontFamily: 'iransans'),
                );
              }
            }),
            Obx(() {
              return Text(
                'زون 1',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
              );
            }),
          ],
        ),
      ),
    );
  }),
  Obx(() {
    return Visibility(
      visible: Get.find<controllershow>(tag: 'secend').showf[13].value,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              if (Get.find<controllerphoneinfo>(tag: 'secend')
                      .Statuszoons
                      .value[1] ==
                  '1') {
                return Text(
                  'بسته',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Get.find<controllerphoneinfo>(tag: 'secend')
                                  .Anten
                                  .value ==
                              'o'
                          ? Colors.white
                          : Colors.white,
                      fontFamily: 'iransans'),
                );
              } else {
                return Text(
                  'باز',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Get.find<controllerphoneinfo>(tag: 'secend')
                                  .Anten
                                  .value ==
                              'o'
                          ? Colors.white
                          : Colors.white,
                      fontFamily: 'iransans'),
                );
              }
            }),
            Obx(() {
              return Text(
                'زون 2',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
              );
            }),
          ],
        ),
      ),
    );
  }),
  Obx(() {
    return Visibility(
      visible: Get.find<controllershow>(tag: 'secend').showf[14].value,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              if (Get.find<controllerphoneinfo>(tag: 'secend')
                      .Statuszoons
                      .value[2] ==
                  '1') {
                return Text(
                  'بسته',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Get.find<controllerphoneinfo>(tag: 'secend')
                                  .Anten
                                  .value ==
                              'o'
                          ? Colors.white
                          : Colors.white,
                      fontFamily: 'iransans'),
                );
              } else {
                return Text(
                  'باز',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Get.find<controllerphoneinfo>(tag: 'secend')
                                  .Anten
                                  .value ==
                              'o'
                          ? Colors.white
                          : Colors.white,
                      fontFamily: 'iransans'),
                );
              }
            }),
            Obx(() {
              return Text(
                'زون 3',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
              );
            }),
          ],
        ),
      ),
    );
  }),
  Obx(() {
    return Visibility(
      visible: Get.find<controllershow>(tag: 'secend').showf[14].value,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              if (Get.find<controllerphoneinfo>(tag: 'secend')
                      .Statuszoons
                      .value[3] ==
                  '1') {
                return Text(
                  'بسته',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Get.find<controllerphoneinfo>(tag: 'secend')
                                  .Anten
                                  .value ==
                              'o'
                          ? Colors.white
                          : Colors.white,
                      fontFamily: 'iransans'),
                );
              } else {
                return Text(
                  'باز',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Get.find<controllerphoneinfo>(tag: 'secend')
                                  .Anten
                                  .value ==
                              'o'
                          ? Colors.white
                          : Colors.white,
                      fontFamily: 'iransans'),
                );
              }
            }),
            Obx(() {
              return Text(
                'زون 4',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .Anten
                                .value ==
                            'o'
                        ? Colors.white
                        : Colors.white,
                    fontFamily: 'iransans'),
              );
            }),
          ],
        ),
      ),
    );
  }),
];
