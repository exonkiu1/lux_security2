// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:lux_security2/Pages/relleh/widget_relleh.dart';
import 'package:lux_security2/color.dart';
import 'package:telephony/telephony.dart';

class Relleh extends StatefulWidget {
  const Relleh({Key? key}) : super(key: key);

  @override
  State<Relleh> createState() => _RellehState();
}

class _RellehState extends State<Relleh> {
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
              SafeArea(
                  child: tabbar(
                image: 'images/electricity.png',
                name: 'رله',
              )),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Obx(() {
                    return Text(
                      '${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[0]}',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'iransans',
                          fontSize: 20),
                      textDirection: TextDirection.rtl,
                    );
                  }),
                ),
              ),

              ///
              ///رله 1
              ///
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: color4),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [relleh1_on(), relleh1_opendoor(), relleh1_off()],
                ),
              ),
              relleh1_time_open_door(),

              ///
              ///رله2
              ///
              Obx(() {
                return Visibility(
                  visible: Get.find<controllerphoneinfo>(tag: 'secend')
                                  .TypeMicro
                                  .value !=
                              'Lx50' &&
                          Get.find<controllerphoneinfo>(tag: 'secend')
                                  .TypeMicro
                                  .value !=
                              'Lx500'
                      ? true
                      : false,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Obx(() {
                        return Text(
                          '${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[2]}',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'iransans',
                              fontSize: 20),
                          textDirection: TextDirection.rtl,
                        );
                      }),
                    ),
                  ),
                );
              }),
              Obx(() {
                return Visibility(
                  visible: Get.find<controllerphoneinfo>(tag: 'secend')
                                  .TypeMicro
                                  .value !=
                              'Lx50' &&
                          Get.find<controllerphoneinfo>(tag: 'secend')
                                  .TypeMicro
                                  .value !=
                              'Lx500'
                      ? true
                      : false,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30), color: color4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        relleh2_on(),
                        relleh2_opendoor(),
                        relleh2_off()
                      ],
                    ),
                  ),
                );
              }),
              Obx(() {
                return Visibility(
                    visible: Get.find<controllerphoneinfo>(tag: 'secend')
                                    .TypeMicro
                                    .value !=
                                'Lx50' &&
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                    .TypeMicro
                                    .value !=
                                'Lx500'
                        ? true
                        : false,
                    child: relleh2_time_open_door());
              }),

              ///
              ///other
              ///
              ///
              rellehs_name(),
              Obx(() {
                return Visibility(
                    visible: Get.find<controllerphoneinfo>(tag: 'secend')
                                    .TypeMicro
                                    .value !=
                                'Lx50' &&
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                    .TypeMicro
                                    .value !=
                                'Lx500'
                        ? true
                        : false,
                    child: rellehs_setting_more());
              })
            ],
          )),
    );
  }
}
