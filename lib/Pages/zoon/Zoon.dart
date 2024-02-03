// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllerOnOff.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:lux_security2/color.dart';
import 'package:telephony/telephony.dart';

class Zoon extends StatefulWidget {
  const Zoon({Key? key}) : super(key: key);

  @override
  State<Zoon> createState() => _ZoonState();
}

class _ZoonState extends State<Zoon> {
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
        mainAxisSize: MainAxisSize.min,
        children: [
          SafeArea(
              child: tabbar(
            image: 'images/eye.png',
            name: 'زون',
          )),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              width: Get.width * 0.69,
              height: Get.height*0.9,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Obx(
                   () {
                        return Visibility(
                          visible: Get.find<controlleronoff>(tag: 'secend').Inquiryzoon.value,
                          child: CircularProgressIndicator(color: Colors.white,),
                          replacement: InkWell(
                            onTap: ()=>Get.find<controllerphoneinfo>(tag: 'secend').inquryzoons(),
                            child: Container(
                              decoration: boxdecoration1,
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Center(
                                child: Text('استعلام زون ها',
                                    style: TextStyle(
                                        color: Colors.white, fontFamily: 'iransans'),
                                    textDirection: TextDirection.rtl),
                              ),
                            ),
                          ),
                        );
                      }
                    ),
                    SizedBox(height: 20,),
                    Obx(
                      (){
                        return Column(
                          children: List.generate(
                            Get.find<controllerphoneinfo>(tag: 'secend').TypeMicro.value=='Lx50'?8:
                              15,
                              (index) => Column(
                                children: [
                                   Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white),
                                            borderRadius: BorderRadius.circular(40)),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Center(child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('زون${index+1}',style: TextStyle(color: Colors.white,fontFamily:'iransans'),),
                                           
                                  Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   
                                    children: [
                                     zoon_delete(index:index),
                                     SizedBox(width: Get.width*0.1),
                                      zoon_box(index: index,),
                                              ],
                                            ),
                                ],
                              ),),
                                      ),
                                ],
                              )),
                        );
                      }
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class zoon_delete extends StatelessWidget {
  const zoon_delete({
    Key? key,required this.index
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return InkWell(
         onTap:   Get.find<controllerphoneinfo>(tag: 'secend')
                              .fifteensecends
                              .value >=
                          15
                      ? () async {
                          Get.defaultDialog(
                              backgroundColor:
         Get.find<controlleronoff>(tag: 'secend').Themecolor[
             Get.find<controlleronoff>(tag: 'secend')
                 .moodcolor]![1],
                              title: 'هشدار',
                              titleStyle: TextStyle(
         color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
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
                                final Telephony telephony = Telephony.instance;
                                telephony.sendSms(
         to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
         message:
             '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*42*${Get.find<controllerphoneinfo>(tag:'secend').TypeMicro.value=='Old1000'?(index > 3 ? (index + 1) : 4 - index):(index+1)}*9#',
                                );
                                print(
           '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*42*${index > 3 ? (index + 1) : 4 - index}*9#');
                                Get.back();
                                Get.snackbar('اطلاعیه', 'پیامک ارسال شد');
                                Get.find<controllerphoneinfo>(tag: 'secend')
           .startfifteensecends();
                              });
                        }
                      : () => Get.snackbar(
                          'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
         child: Image.asset('images/delete.png'));
      }
    );
  }
}

class zoon_box extends StatelessWidget {
  const zoon_box({
    Key? key,required this.index
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Obx(() {
                  return DropdownButton<String>(
                    value: Get.find<controllerphoneinfo>(tag: 'secend')
                        .zonesdropdown[index],
                    icon: Icon(
                      Icons.grading,
                      color:Colors.white,
                    ),
                    dropdownColor: Get.find<controlleronoff>(tag: 'secend')
      .Themecolor[
                        Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                    elevation: 6,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    style: TextStyle(
                        color:
      Get.find<controlleronoff>(tag: 'secend').Themecolor[
              Get.find<controlleronoff>(tag: 'secend')
                  .moodcolor]![2]),
                    underline: Container(
                      height: 0.0,
                      color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
    Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
                    ),
                    onChanged: Get.find<controllerphoneinfo>(tag: 'secend')
              .fifteensecends
              .value >=
      15
                        ? (String? newValue) async {
      Get.defaultDialog(
              backgroundColor:
                  Get.find<controlleronoff>(tag: 'secend').Themecolor[
                      Get.find<controlleronoff>(tag: 'secend')
                          .moodcolor]![1],
              title: 'هشدار',
              titleStyle: TextStyle(
                  color: Get.find<controlleronoff>(tag: 'secend').Themecolor[
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
              onConfirm: Get.find<controllerphoneinfo>(tag: 'secend').TypeMicro.value == 'Lx50'
                  ? () {
                      Get.find<controllerphoneinfo>(
                              tag: 'secend')
                          .zonesdropdown[index] = newValue!;
          
                      List<String> type = [
                        'normaly close',
                        'دینگ دانگ',
                        '24 ساعت',
                        'حفاظت',
                      ];
          
                      for (var i = 0; i < type.length; i++) {
                        if (Get.find<controllerphoneinfo>(
                                    tag: 'secend')
                                .zonesdropdown[index] ==
                            type[i]) {
                          List<String> copyzone =
                              Get.find<controllerphoneinfo>(
                                      tag: 'secend')
                                  .Zone
                                  .value
                                  .split(' ');
                          copyzone[index] = '$i';
                          print(copyzone);
                          Get.find<controllerphoneinfo>(
                                  tag: 'secend')
                              .Zone
                              .value = '';
                          for (var i = 0;
                              i < copyzone.length;
                              i++) {
                            Get.find<controllerphoneinfo>(
                                        tag: 'secend')
                                    .Zone
                                    .value =
                                Get.find<controllerphoneinfo>(
                                            tag: 'secend')
                                        .Zone
                                        .value +
                                    copyzone[i] +
                                    (i == 14 ? '' : ' ');
          
                            print(i);
                          }
                          i == 3 ? i = 4 : null;
                          i == 2 ? i = 3 : null;
                          i == 1 ? i = 2 : null;
                          i == 0 ? i = 1 : null;
                         /*  i == 7 ? i = 8 : null;
                          i == 6 ? i = 7 : null;
                          i == 5 ? i = 6 : null; */
          
                          final Telephony telephony =
                              Telephony.instance;
                          telephony.sendSms(
                            to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                            message:
                                '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*42*${(index + 1)}*${i}#',
                          );
                          print(
                              '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*42*${index > 3 ? (index + 1) : 4 - index}*${i}#');
                          Get.find<controllerphoneinfo>(
                                  tag: 'secend')
                              .updatePhone();
                          print(Get.find<controllerphoneinfo>(
                                  tag: 'secend')
                              .Zone
                              .value);
                        }
                      }
                      Get.back();
          
                      Get.snackbar('اطلاعیه', 'پیامک ارسال شد');
                      Get.find<controllerphoneinfo>(
                              tag: 'secend')
                          .startfifteensecends();
                    }
                  : () {
                      Get.find<controllerphoneinfo>(
                              tag: 'secend')
                          .zonesdropdown[index] = newValue!;
          
                      List<String> type = [
                        'normaly close',
                        'normaly open',
                        'دینگ دانگ',
                        '24 ساعت',
                        'حفاظت',
                        'جاسوسی',
                        'آبی',
                        '24ساعت جاسوسی',
                      ];
          
                      for (var i = 0; i < type.length; i++) {
                        if (Get.find<controllerphoneinfo>(
                                    tag: 'secend')
                                .zonesdropdown[index] ==
                            type[i]) {
                          List<String> copyzone =
                              Get.find<controllerphoneinfo>(
                                      tag: 'secend')
                                  .Zone
                                  .value
                                  .split(' ');
                          copyzone[index] = '$i';
                          print(copyzone);
                          Get.find<controllerphoneinfo>(
                                  tag: 'secend')
                              .Zone
                              .value = '';
                          for (var i = 0;
                              i < copyzone.length;
                              i++) {
                            Get.find<controllerphoneinfo>(
                                        tag: 'secend')
                                    .Zone
                                    .value =
                                Get.find<controllerphoneinfo>(
                                            tag: 'secend')
                                        .Zone
                                        .value +
                                    copyzone[i] +
                                    (i == 14 ? '' : ' ');
          
                            print(i);
                          }
                          i == 7 ? i = 8 : null;
                          i == 6 ? i = 7 : null;
                          i == 5 ? i = 6 : null;
                          i == 1 ? i = 5 : null;
                          i == 0 ? i = 1 : null;
                          
                          
                          
          
                          final Telephony telephony =
                              Telephony.instance;
                          telephony.sendSms(
                            to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                            message:
                                '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*42*${Get.find<controllerphoneinfo>(tag:'secend').TypeMicro.value=='Old1000'?(index > 3 ? (index + 1) : 4 - index):(index+1)}*${i}#',
                          );
                          print(
                              '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*42*${Get.find<controllerphoneinfo>(tag:'secend').TypeMicro.value=='Old1000'?(index > 3 ? (index + 1) : 4 - index):(index+1)}*${i}#');
                          Get.find<controllerphoneinfo>(
                                  tag: 'secend')
                              .updatePhone();
                          print(Get.find<controllerphoneinfo>(
                                  tag: 'secend')
                              .Zone
                              .value);
                        }
                      }
                      Get.back();
          
                      Get.snackbar('اطلاعیه', 'پیامک ارسال شد');
                      Get.find<controllerphoneinfo>(
                              tag: 'secend')
                          .startfifteensecends();
                    });
    }
                        : (String? newvlaue) => Get.snackbar(
      'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                    items: Get.find<controllerphoneinfo>(tag: 'secend')
              .TypeMicro
              .value ==
      'Lx50'
                        ? <String>[
      'normaly close',
     
      'دینگ دانگ',
      '24 ساعت',
      'حفاظت',
      
    ].map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        alignment: AlignmentDirectional.center,
        child: Text(value,style: TextStyle(color: Colors.white,fontFamily: 'iransans'),textDirection:TextDirection.rtl,textAlign: TextAlign.center,),
      );
    }).toList()
                        : <String>[
      'normaly close',
      'normaly open',
      'دینگ دانگ',
      '24 ساعت',
      'حفاظت',
      'جاسوسی',
      'آبی',
      '24ساعت جاسوسی'
    ].map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        alignment: AlignmentDirectional.center,
        child: Center(child: Text(value,style: TextStyle(color: Colors.white,fontFamily: 'iransans'),textDirection:TextDirection.rtl,textAlign: TextAlign.center,))
      );
    }).toList(),
                  );
                });
  }
}
