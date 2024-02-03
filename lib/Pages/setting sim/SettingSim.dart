// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'widgetSimcard.dart';

class settingSim extends StatefulWidget {
  const settingSim({Key? key}) : super(key: key);

  @override
  State<settingSim> createState() => _settingSimState();
}

class _settingSimState extends State<settingSim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            color: Colors.grey[800],
            image: const DecorationImage(
                image: AssetImage('images/bg.png'), fit: BoxFit.cover)),
        child: Column(
          children: [
            const SafeArea(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: tabbar(),
            )),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Obx(() {
              return Visibility(
                  visible: Get.find<controllerphoneinfo>(tag: 'secend')
                              .TypeMicro
                              .value ==
                          'Lx50'
                      ? false
                      : true,
                  child: Column(
                    children: [
 Container(
                        height: Get.height * 0.14,
                        child: Obx(() {
                          return SleekCircularSlider(
                            appearance: CircularSliderAppearance(
                                //  counterClockwise: true,
                                // spinnerMode: true,
                                //counterClockwise: true,
                                
                                customWidths:
                                    CustomSliderWidths(progressBarWidth: 10,)),
                            min: 0,
                            max: 100,
                            initialValue: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .Charge
                                        .value >
                                    (Get.find<controllerphoneinfo>(tag: 'secend')
                                            .Chargemin
                                            .value *
                                        10)
                                ? (Get.find<controllerphoneinfo>(tag: 'secend')
                                            .Charge
                                            .value -
                                        (Get.find<controllerphoneinfo>(tag: 'secend')
                                                .Chargemin
                                                .value *
                                            10)) /
                                    ((Get.find<controllerphoneinfo>(tag: 'secend')
                                                .Chargemax
                                                .value *
                                            10) -
                                        (Get.find<controllerphoneinfo>(tag: 'secend')
                                                .Chargemin
                                                .value *
                                            10)) *
                                    100
                                : 0,
                          );
                        }),
                      ),
                      Obx(() {
                        return Text(
                          '${Get.find<controllerphoneinfo>(tag: 'secend').Charge.value}ریال',
                          style: TextStyle(color: Colors.white,fontFamily: 'iransans')
                         
                        );
                      }),
                      inqury_charge(),
                      charge_sim(),
                      set_min_max(),
                    ],
                  ));
            }),
            const change_phone(),
            const change_name(),
            const delete_device(),
          ],
        ),
      ),
    );
  }
}

class set_min_max extends StatelessWidget {
  const set_min_max({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        TextEditingController maxcapsole =
            TextEditingController();
        TextEditingController mincapsole =
            TextEditingController();
        Get.defaultDialog(
          backgroundColor:
              Get.find<controlleronoff>(tag: 'secend')
                      .Themecolor[
                  Get.find<controlleronoff>(tag: 'secend')
                      .moodcolor]![1],
          title: 'تنظیم بازه کپسول شارژ',
          titleStyle: TextStyle(
              color: Get.find<controlleronoff>(tag: 'secend')
                      .Themecolor[
                  Get.find<controlleronoff>(tag: 'secend')
                      .moodcolor]![2]),
          content: Container(
            width: Get.width * 0.7,
            child: Column(
              children: [
                Text(
                  'کپسول در حداکثر شارژ پر نمایش داده میشود.همچنین در حداقل شارژ کاملا خالی نمایش داده می شود',
                  style: TextStyle(
                      color: Get.find<controlleronoff>(
                                  tag: 'secend')
                              .Themecolor[
                          Get.find<controlleronoff>(
                                  tag: 'secend')
                              .moodcolor]![0]),
                ),
                TextField(
                  autofocus: true,
                  controller: maxcapsole,
                  keyboardType: TextInputType.phone,
                  cursorColor: Get.find<controlleronoff>(
                              tag: 'secend')
                          .Themecolor[
                      Get.find<controlleronoff>(tag: 'secend')
                          .moodcolor]![0],
                  style: TextStyle(
                      color: Get.find<controlleronoff>(
                                  tag: 'secend')
                              .Themecolor[
                          Get.find<controlleronoff>(
                                  tag: 'secend')
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
                      hintText:
                          'تومان${Get.find<controllerphoneinfo>(tag: 'secend').Chargemax.value}حداکثر شارژ',
                      hintStyle: TextStyle(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .moodcolor]![0],
                          fontSize: 16)),
                ),
                TextField(
                  controller: mincapsole,
                  keyboardType: TextInputType.phone,
                  cursorColor: Get.find<controlleronoff>(
                              tag: 'secend')
                          .Themecolor[
                      Get.find<controlleronoff>(tag: 'secend')
                          .moodcolor]![0],
                  style: TextStyle(
                      color: Get.find<controlleronoff>(
                                  tag: 'secend')
                              .Themecolor[
                          Get.find<controlleronoff>(
                                  tag: 'secend')
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
                      hintText:
                          'تومان${Get.find<controllerphoneinfo>(tag: 'secend').Chargemin.value}حداقل شارژ',
                      hintStyle: TextStyle(
                          color: Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .Themecolor[
                              Get.find<controlleronoff>(
                                      tag: 'secend')
                                  .moodcolor]![0],
                          fontSize: 16)),
                ),
                InkWell(
                  onTap: () async {
                    if (int.parse(maxcapsole.text) >
                            int.parse(mincapsole.text) &&
                        int.parse(mincapsole.text) >= 1000 &&
                        int.parse(maxcapsole.text) >= 5000) {
                      Get.find<controllerphoneinfo>(
                              tag: 'secend')
                          .Chargemax
                          .value = int.parse(maxcapsole.text);
                      Get.find<controllerphoneinfo>(
                              tag: 'secend')
                          .Chargemin
                          .value = int.parse(mincapsole.text);
                      Get.find<controllerphoneinfo>(
                              tag: 'secend')
                          .updatePhone();
                      Get.snackbar('اطلاعیه',
                          'تغییر مورد نظر انجام شد');
                    } else {
                      Get.snackbar('خطا',
                          'اطلاعات درست و هر دو فیلد پر شود');
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Get.find<controlleronoff>(
                                  tag: 'secend')
                              .Themecolor[
                          Get.find<controlleronoff>(
                                  tag: 'secend')
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
              ],
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('images/refresh-2.png'),
            Text(
              'تنظیم بازه کپسول شارژ',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'iransans'),
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}

class charge_sim extends StatelessWidget {
  const charge_sim({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Get.find<controllerphoneinfo>(tag: 'secend')
              .chargesim(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('images/add.png'),
            Text(
              'شارژ اعتبار سیمکارت',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'iransans'),
            ),
          ],
        ),
      ),
    );
  }
}

class inqury_charge extends StatelessWidget {
  const inqury_charge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Get.find<controllerphoneinfo>(tag: 'secend')
              .inqurycharge(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('images/info-circle.png'),
            Visibility(
              visible:
                  Get.find<controlleronoff>(tag: 'secend')
                      .InquiryCharge
                      .value,
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
              replacement: const Text(
                'استعلام شارژ',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'iransans'),
                textDirection: TextDirection.rtl,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
