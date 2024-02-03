import 'package:flutter/material.dart';

import 'Pages/home page/HomePage.dart';
import 'package:get/get.dart';

Color color1 = Colors.grey[200]!;
//Color colortext = Colors.white;
TextStyle text1 = TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
BoxDecoration boxdecoration1 = BoxDecoration(
    borderRadius: BorderRadius.circular(40), color: Color(0xFf3F5689));
Color color2 = const Color(0xFFBEBEBE);
Color color3 = const Color(0xFf3F5689);
Color color4 = const Color(0xFF9D9D9D);

class tabbar extends StatelessWidget {
  const tabbar({Key? key, required this.name, required this.image})
      : super(key: key);
  final String name;
  final String image;
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
                Text(
                  name,
                  style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset(image),
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
