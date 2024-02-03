// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:lux_security2/Pages/home%20page/HomePage.dart';
import 'package:telephony/telephony.dart';

import '../../color.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
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
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SafeArea(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: tabbar(),
            )),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: Get.width * 0.9,
                      height: Get.height * 0.8 + 50,
                      child: SingleChildScrollView(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const inqury_contacts(),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: List.generate(
                                  10,
                                  (index) => Container(
                                    margin: index==9?EdgeInsets.only(bottom:200):null,
                                        child: Column(
                                          children: [
                                            Container(
                                              width: Get.width*0.9,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                        mainAxisSize: MainAxisSize.min,
                                                children: [
                                                    deleteContacts(index:index),
                                                  boxABCD(index: index),
                                                  Text(
                                                    'مخاطب  ${index + 1}',
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontFamily: 'iransans',
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textDirection:
                                                        TextDirection.rtl,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                                width: Get.width * 0.7,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                    color: color2),
                                                child: Obx(
                                                  () {
                                                    return TextField(
                                                      style: TextStyle(color: Colors.white,fontFamily: 'iransans'),
                                                       controller: Get.find<controllerphoneinfo>(tag: 'secend')
                        .namecontect[index],
                    cursorColor: Get.find<controlleronoff>(tag: 'secend')
                            .Themecolor[
                        Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                                                      textAlign: TextAlign.center,
                                                      decoration: InputDecoration(
                                                          border: InputBorder.none,
                                                          hintText: 'نام مخاطب',
                                                          hintStyle: TextStyle(
                                                              color: color4,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'iransans')),
                                                    );
                                                  }
                                                )),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              width: Get.width * 0.7,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                  color: color2),
                                              child: TextField(
                                                style: TextStyle(color: Colors.white,fontFamily: 'iransans'),
                                                keyboardType: TextInputType.phone,
                                                controller: Get.find<
                                                            controllerphoneinfo>(
                                                        tag: 'secend')
                                                    .phonecontect[index],
                                                textAlign: TextAlign.center,
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText:
                                                        'شماره تلفن مخاطب',
                                                    hintStyle: TextStyle(
                                                        color: color4,
                                                        fontSize: 12,
                                                        fontFamily:
                                                            'iransans')),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class deleteContacts extends StatelessWidget {
  const deleteContacts({
    Key? key,required this.index
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Obx(() {
                      return InkWell(
                        onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                                    .fifteensecends
                                    .value >=
                                15
                            ? () async {
                                Get.defaultDialog(
                                    backgroundColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                                        Get.find<controlleronoff>(tag: 'secend')
                                            .moodcolor]![1],
                                    title: 'هشدار',
                                    titleStyle: TextStyle(
                                        color: Get.find<controlleronoff>(tag: 'secend')
                                                .Themecolor[
                                            Get.find<controlleronoff>(tag: 'secend')
                                                .moodcolor]![2],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                    middleTextStyle: TextStyle(
                                        color: Get.find<controlleronoff>(tag: 'secend')
                                            .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                    middleText: 'پیامک فرستاده شود؟',
                                    /*  onCancel: () => Get.,
                                  textCancel: 'خیر', */
                                    cancelTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                                    confirmTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                                    buttonColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                                    textConfirm: 'بله',
                                    onConfirm: () {
                                      Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .contact1[index] = ' ';
                                      Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .namecontect[index]
                                          .text = '';
                                      Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .phonecontect[index]
                                          .text = '';
                                      Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .dropdownValues[index] = 'A';
                                      Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .updatePhone();
                                      final Telephony telephony =
                                          Telephony.instance;
                                      telephony.sendSms(
                                        to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                        message:
                                            '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*30*${index + 1}*D#',
                                      );
                                      Get.back();
                                      Get.snackbar(
                                          'اطلاعیه', 'پیامک فرستاده شد');
                                      Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .startfifteensecends();
                                    });
                              }
                            : () => Get.snackbar('خطا',
                                'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                        child:Image.asset('images/delete.png')
                      );
                    });
  }
}

class boxABCD extends StatelessWidget {
  const boxABCD({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return DropdownButton<String>(
        value:
            Get.find<controllerphoneinfo>(tag: 'secend').contact1[index] == ' '
                ?  null
                : Get.find<controllerphoneinfo>(tag: 'secend')
                    .dropdownValues[index],
        icon: Icon(
          Icons.grading,
          color: Colors.white
        ),
        dropdownColor: Get.find<controlleronoff>(tag: 'secend')
            .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
        elevation: 6,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        style: TextStyle(
            color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
                Get.find<controlleronoff>(tag: 'secend').moodcolor]![2]),
        underline: Container(
          height: 0.1,
          color: Colors.redAccent.withOpacity(0.1),
        ),
        onChanged:
            Get.find<controllerphoneinfo>(tag: 'secend').fifteensecends.value >=
                    15
                ? (String? newValue) async {
                    Get.defaultDialog(
                        backgroundColor:
                            Get.find<controlleronoff>(tag: 'secend').Themecolor[
                                Get.find<controlleronoff>(tag: 'secend')
                                    .moodcolor]![1],
                        title: 'هشدار',
                        titleStyle: TextStyle(
                            color: Get.find<controlleronoff>(tag: 'secend')
                                    .Themecolor[
                                Get.find<controlleronoff>(tag: 'secend')
                                    .moodcolor]![2],
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                        middleTextStyle: TextStyle(
                            color: Get.find<controlleronoff>(tag: 'secend')
                                .Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                        middleText: 'پیامک فرستاده شود؟',
                        /*  onCancel: () => Get.,
                              textCancel: 'خیر', */
                        cancelTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                        confirmTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
                        buttonColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                        textConfirm: 'بله',
                        onConfirm: () {
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .dropdownValues[index] = newValue!;

                          Get.find<controllerphoneinfo>(tag: 'secend')
                                  .contact1[index] =
                              '${Get.find<controllerphoneinfo>(tag: 'secend').namecontect[index].text}+${Get.find<controllerphoneinfo>(tag: 'secend').phonecontect[index].text}+${Get.find<controllerphoneinfo>(tag: 'secend').dropdownValues[index]}';

                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .updatePhone();
                          final Telephony telephony = Telephony.instance;
                          telephony.sendSms(
                            to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                            message:
                                '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*31*${index + 1}*${Get.find<controllerphoneinfo>(tag: 'secend').phonecontect[index].text}${Get.find<controllerphoneinfo>(tag: 'secend').dropdownValues[index][0]}#',
                          );
                          Get.back();
                          Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .startfifteensecends();
                        });
                  }
                : (String? newvalue) =>
                    Get.snackbar('خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
        items: <String>[
          'Aمدیر',
          'Bفقط ارسال گزارشات',
          'Cفقط گزارش ریموت',
          'Dفقط تماس'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            alignment: AlignmentDirectional.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(value.replaceAll(new RegExp(r'[$A-B-C-D]'), ''),style:TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: color4),textDirection: TextDirection.rtl,textAlign: TextAlign.left,),
                Text(
                  value.replaceAll(new RegExp(r'[^A-B-C-D]'), ''),
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.white),textDirection: TextDirection.rtl,textAlign: TextAlign.left,
                ),
              ],
            ),
          );
        }).toList(),
      );
    });
  }
}

class inqury_contacts extends StatelessWidget {
  const inqury_contacts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: Get.find<controlleronoff>(tag: 'secend').Inquirycontect.value,
      child: const CircularProgressIndicator(
        color: Colors.white,
      ),
      replacement: InkWell(
        onTap: () =>
            Get.find<controllerphoneinfo>(tag: 'secend').inqurycontacts(),
        child: Container(
          decoration: boxdecoration1,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
          child: const Text(
            'استعلام مخاطبین',
            style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
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
                  'مخاطبین',
                  style: TextStyle(color: Colors.white, fontFamily: 'iransans'),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset('images/profile-circle.png'),
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
