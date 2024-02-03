import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../color.dart';
// ignore_for_file: file_names

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/bg.jpg'))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                on_off(),
              ],
            ),
          )),
    );
  }
}

class on_off extends StatefulWidget {
  const on_off({
    Key? key,
  }) : super(key: key);

  @override
  State<on_off> createState() => _on_offState();
}

class _on_offState extends State<on_off> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> hilight;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    hilight = Tween(begin: 15.0, end: 35.0).animate(CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 1.0, curve: Curves.ease)));
    _animationController.forward();
    // TODO: implement initState
    _animationController.addListener(() {
      _animationController.isCompleted
          ? _animationController.reverse()
          : _animationController.isAnimating
              ? null
              : _animationController.forward();
    });

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return InkWell(
        onTap: Get.find<controllerphoneinfo>(tag: 'secend').OnPhones.value ==
                'off'
            ? () =>
                Get.find<controllerphoneinfo>(tag: 'secend').ON_OFF('10', 'off')
            : () =>
                Get.find<controllerphoneinfo>(tag: 'secend').ON_OFF('11', 'on'),
        child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return Container(
                width: Get.width * 0.3,
                height: Get.width * 0.3,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: hilight.value,
                      spreadRadius: 1.0,
                      offset: Offset(
                        0.0, // horizontal, move right
                        0.0, // vertical, move down
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    width: 10,
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                    .OnPhones
                                    .value ==
                                'on' ||
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                    .OnPhones
                                    .value ==
                                'off'
                        ? Color(0xFF33508C)
                        : color4,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Get.find<controllerphoneinfo>(tag: 'secend')
                                          .OnPhones
                                          .value ==
                                      'on' ||
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                          .OnPhones
                                          .value ==
                                      'off'
                              ? Color(0xFF33508C)
                              : color4,
                          border: Border.all(
                              color: Colors.white.withOpacity(0.06), width: 7)),
                      child: Obx(() {
                        return Padding(
                          padding: Get.find<controllerphoneinfo>(tag: 'secend')
                                      .OnPhones
                                      .value ==
                                  'off'
                              ? EdgeInsets.all(Get.width * 0.02)
                              : EdgeInsets.all(Get.width * 0.06),
                          child: FittedBox(
                            child: Center(
                              child: Obx(() {
                                return Text(
                                  '${Get.find<controllerphoneinfo>(tag: 'secend').OnPhones.value == 'off' ? 'غیرفعال' : 'فعال'}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'iransans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textDirection: TextDirection.rtl,
                                );
                              }),
                            ),
                          ),
                        );
                      })),
                ),
              );
            }),
      );
    });
  }
}
