// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Pages/home%20page/HomePage.dart';

import '../../color.dart';

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
                  'تنظیمات اپلیکیشن',
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
