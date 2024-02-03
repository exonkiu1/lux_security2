import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllercolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';

class controllershow extends GetxController {
  @override
  void onInit() async {
    showf = List.generate(15, (index) => true.obs);
    getbool();
    // TODO: implement onInit
    super.onInit();
  }

  late List<RxBool> showf;
  List<String> nameshow = [
    'voltac',
    'speaker',
    'Countremote',
    'Anten',
    'CountConuntect',
    'StatusNetwork',
    'Voltbatry',
    'StatusRelleh',
    'silent',
    'halfon',
    'listtener',
    'zon1',
    'zon2',
    'zon3',
    'zon4',
  ];
  List<String> name1show = [
    'برق شهر',
    'بلندگو',
    'تعداد ریموت',
    'آنتن',
    'تعداد مخاطب',
    'وضعیت شبکه ',
    'ولتاژ باطری',
    'وضعیت رله 1',
    'سایلنت',
    'نیمه فعال',
    'شنود',
    'زون1',
    'زون2',
    'زون3',
    'زون4',
  ];
  void getbool() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (var i = 0; i < 15; i++) {
      showf[i].value = prefs.getBool(nameshow[i]) ?? true;
      ;
    }
  }

  changeshow(int index, String name2, bool value) async {
    showf[index].value = value;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(name2, value);
  }
}

chekshow(int index, String name, String name2) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Container(
      padding: EdgeInsets.all(2.0),
      margin: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
          /*  color: colorstheme[
              Get.find<controllercolor>(tag: 'secend').mode.value]![0], */
          borderRadius: BorderRadius.circular(20)),
      width: Get.width * 0.92,
      child: Obx(() {
        return CheckboxListTile(
          checkColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[
              Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
          tileColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[
              Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
          activeColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[
              Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
          selectedTileColor:
              Get.find<controlleronoff>(tag: 'secend').Themecolor[
                  Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
          value: Get.find<controllershow>(tag: 'secend').showf[index].value,
          onChanged: (value) async {
            Get.find<controllershow>(tag: 'secend')
                .changeshow(index, name2, value ?? true);
          },
          title: Text(name,
              style: TextStyle(color: Colors.white, fontFamily: 'iransans')),
        );
      }),
    ),
  );
}

listshowchek() {
  return SingleChildScrollView(
    child: Column(
        children: List.generate(15, (index) {
      return chekshow(
          index,
          Get.find<controllershow>(tag: 'secend').name1show[index],
          Get.find<controllershow>(tag: 'secend').nameshow[index]);
    })),
  );
}
