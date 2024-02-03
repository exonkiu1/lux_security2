// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:lux_security2/Pages/home%20page/shape.dart';
import 'package:lux_security2/Pages/home%20page/widget_homepage.dart';
import 'package:lux_security2/Pages/option/Option.dart';
import 'package:lux_security2/Pages/test%20page/TestPage1.dart';
import 'package:telephony/telephony.dart';
import 'dart:math' as math;
import '../../color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _intensity = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      // bottomNavigationBar: Image.asset('images/Subtract.png'),
      body: HomePage_1(),
    );
  }
}

class HomePage_1 extends StatelessWidget {
  const HomePage_1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      decoration: BoxDecoration(
          color: Colors.grey[800],
          image: DecorationImage(
              image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
      child: Column(
        //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SafeArea(
            child: Container(
                height: Get.height * 0.1,
                child: Image.asset('images/logo1.png')),
          ),
          Container(
            height: Get.height * 0.07,
          ),
          tabbar(),
          Container(height: Get.height * 0.07),
          on_off(),
          Expanded(
            child: Container(
              height: Get.height * 0.50,
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
                  earth(),
                  Positioned(
                    left: Get.width * 0.4,
                    right: Get.width * 0.4,
                    bottom: Get.height * 0.1,
                    child: Obx(() {
                      return InkWell(
                        onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                                    .OnPhones
                                    .value ==
                                'off'
                            ? () => Get.find<controllerphoneinfo>(tag: 'secend')
                                .ON_OFF('11', 'on')
                            : () => Get.find<controllerphoneinfo>(tag: 'secend')
                                .ON_OFF('10', 'off'),
                        child: Container(
                          height: Get.height * 0.06,
                          child: FittedBox(
                            child: Obx(() {
                              return Text(
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                              .OnPhones
                                              .value ==
                                          'off'
                                      ? 'فعال'
                                      : 'غیرفعال',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'iransans',
                                      fontWeight: FontWeight.bold));
                            }),
                          ),
                        ),
                      );
                    }),
                  ),
                  halfon_silent(),
                  pageControllerOnOff()
                ],
              ),
            ),
          ),

          /*  
         
          SizedBox(
            height: Get.height * 0.1,
          ),
          on_off(),
         

          //
          Container(
            height: Get.height * 0.22,
            color: Colors.black,
            width: 2,
          ), */
        ],
      ),
    );
  }
}

class earth extends StatefulWidget {
  const earth({
    Key? key,
  }) : super(key: key);

  @override
  State<earth> createState() => _earthState();
}

class _earthState extends State<earth> with SingleTickerProviderStateMixin{
   late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 12),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
/*   late AnimationController _animationController;
    late Animation<double> angel;

  @override
  void initState() {
     _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    angel = Tween(begin: 10.0, end: 18.0).animate(CurvedAnimation(
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
    // TODO: implement initState
    super.initState();
  } */
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Get.height * 0.29,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context,child) {
          return Transform.rotate(
            angle: _controller.value * (2 * math.pi),
            child: Image.asset(
              'images/earth-2.png',
              width: Get.width,
              fit: BoxFit.cover,
            ),
          );
        }
      ),
    );
  }
}

class pageControllerOnOff extends StatefulWidget {
  const pageControllerOnOff({
    Key? key,
  }) : super(key: key);

  @override
  State<pageControllerOnOff> createState() => _pageControllerOnOffState();
}

class _pageControllerOnOffState extends State<pageControllerOnOff> {
  late PageController _pageController;
  // double doublepage = 0.0;
  int intpage = 0;
  bool boolarrow = true;
  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(() {
      print('${_pageController.page} **** $intpage');
      //doublepage = _pageController.page!;
      intpage.toDouble() > _pageController.page!
          ? boolarrow = false
          : boolarrow = true;
      intpage.toDouble() == _pageController.page! ? boolarrow = true : null;
      setState(() {});
      // print();
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 80,
          height: Get.height * 0.3,
          //  color: Colors.black,
          margin: EdgeInsets.only(bottom: 30),
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              intpage = index;

              if (Get.find<controllerphoneinfo>(tag: 'secend')
                      .fifteensecends
                      .value >=
                  15) {
                Get.defaultDialog(
                    backgroundColor: Get.find<controlleronoff>(tag: 'secend')
                            .Themecolor[
                        Get.find<controlleronoff>(tag: 'secend').moodcolor]![1],
                    title: 'هشدار',
                    titleStyle: TextStyle(
                        color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                            Get.find<controlleronoff>(tag: 'secend')
                                .moodcolor]![2],
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    middleTextStyle: TextStyle(
                        color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                            Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    middleText:Get.find<controllerphoneinfo>(tag: 'secend')
                          .OnPhones
                          .value == 'off'?
                     '(دستگاه فعال شود)پیامک فرستاده شود؟':'(دستگاه غیر فعال شود)پیامک فرستاده شود؟',
                    /*  onCancel: () => Get.,
                 textCancel: 'خیر', */
                    cancelTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                    confirmTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                    buttonColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                    textConfirm: 'بله',
                    onConfirm: () async {
                      Get.back();
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .OnPhones
                          .value == 'off'?Get.find<controllerphoneinfo>(tag: 'secend')
                          .OnPhones
                          .value='on':Get.find<controllerphoneinfo>(tag: 'secend')
                          .OnPhones
                          .value='off';
                      final Telephony telephony = Telephony.instance;
                    Get.find<controllerphoneinfo>(tag: 'secend')
                          .OnPhones
                          .value == 'off'?  telephony.sendSms(
                        to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                        message:
                            '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*10#',
                      ):telephony.sendSms(
                        to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                        message:
                            '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*11#',
                      );
                      await Get.find<controllerphoneinfo>(tag: 'secend')
                          .updatePhone();
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .startfifteensecends();
                      Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                    });
              } else {
                Get.snackbar('خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید');
              }
              /*   Get.find<controllerphoneinfo>(tag: 'secend').OnPhones.value ==
                      'off'
                  ? () => Get.find<controllerphoneinfo>(tag: 'secend')
                      .ON_OFF('11', 'on')
                  : () => Get.find<controllerphoneinfo>(tag: 'secend')
                      .ON_OFF('10', 'off'); */
              //print('$doublepage == $intpage');
            },
            // reverse: true,
            // allowImplicitScrolling: true,
            children: List.generate(
              2000,
              (index) => Container(
                width: 40,
                height: Get.height * 0.2,
                margin: EdgeInsets.only(bottom: 10),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        children: List.generate(
                            7,
                            (index) => Container(
                                width: 1,
                                height: Get.height * 0.01,
                                margin: EdgeInsets.symmetric(
                                  vertical: Get.height * 0.01,
                                ),
                                color: Colors.white)),
                      ),
                      Container(
                        width: Get.width * 0.1,

                        //
                        //
                        height: Get.width * 0.1,
                        //
                        //
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 10,
                                //hilight.value,
                                spreadRadius: 1.0,
                                offset: Offset(
                                  0.0, // horizontal, move right
                                  0.0, // vertical, move down
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xFF6F7688)),
                        child: Icon(
                            boolarrow
                                ? Icons.arrow_upward
                                : Icons.arrow_downward,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            scrollDirection: Axis.vertical,
          ),
        ));
  }
}

class tabbar extends StatelessWidget {
  const tabbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
          color: Color(0xFFBEBEBE), borderRadius: BorderRadius.circular(40)),
      padding: EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () => Get.off(Option(), transition: Transition.leftToRight),
            child: Container(
              //   decoration: boxdecoration1,
              //  margin: const EdgeInsets.only(left: 4, right: 4),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Row(
                children: [
                  const Text(
                    'امکانات',
                    style: TextStyle(
                        color: Color(0xFF9D9D9D), fontFamily: 'iransans'),
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset('images/setting-2.png'),
                ],
              ),
            ),
          ),
          Container(
            decoration: boxdecoration1,
            margin: EdgeInsets.all(2),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Row(
              children: [
                Text(
                  'صفحه اصلی',
                  style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 4,
                ),
                Image.asset('images/home-2.png')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
