import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllercolor.dart';
import 'package:lux_security2/Getxcontroller/controllershow.dart';
import 'package:lux_security2/Getxcontroller/testcontroller.dart';

import 'controllerOnOff.dart';
import 'controllerphoneinfo.dart';

class mybinding implements Bindings {
  @override
  void dependencies() {
    Get.put(controllercolor(), tag: 'secend', permanent: true);
    Get.put(testcontroller(), tag: 'secend', permanent: true);
    Get.put(controlleronoff(), tag: 'secend', permanent: true);
    Get.put(controllerphoneinfo(), tag: 'secend', permanent: true);
    Get.put(controllershow(), tag: 'secend', permanent: true);
    // TODO: implement dependencies
  }
}
