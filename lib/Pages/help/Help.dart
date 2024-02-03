// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/color.dart';

List<String> helptext = [
  'در صفحه اصلی برنامه میتوانید وضعیت کلی دستگاه را مشاهد نمایید بازدن دکمه استعلام دستگاه اطلاعات دیده خواهد شد کپسول آبی را در این صفحه میزان شارژ نسبی دستگاه را نمایش میدهد و اگر تعداد دستگا از یکی بیشتر باشد با کشیدن دست به سمت راست یا چپ دستگاه ,دستگاه تغییر میکند',
  'در صفحه افزودن دستگاه میتوانید مشخصات دستگاه جدید از جمله نام دستگاه و شماره دستگاه را وارد نمایید.پس از ثبت دستگاه جدید در صفحه اصلی اضافه  و نشان داده خواهد شد',
  'برای شارژ دستگاه با زدن دکمه شارژ دستگاه و وارد کردن رمز شارژ دستگاه خود را شارژ کنید و بعد از این کار با زدن دکمه استعلام در همان صفحه اصلی مقدار شارژ خود را بروز رسانی کنید',
  'در بخش تنظیمات دستگاه موارد زیر قابل تنظیم است:1)تغییر رمز دستگاه2)ویرایش اطلاعات دستگاه جاری(در این بخش میتوانید دستگاه جای را نیز حذف کنید)3)حذف ریموت های متصل به دستگاه4)ریست تنظیمات دستگاه به حالت کار خانه)',
  'این بخش شامل تنظیمات پیشرفته ای است که میتوانید روی دستگاه خود اعمال کنید . در این صفحه گزینه مدیریت دستگاه با مخاطبیت وجود دارد که با فعال کردن آن میتوان به دستگاه اعلام کرد که فقط تماس های ورودی از مخاطبین را قبول کند و بقیه شماره ها رد تماس شوند',
  'در این صفحه میتوانید مخاطبین مورد نظر که دستگاه اطلاعات را به انها ارسال میکند وارد نمایید.همچنین میتوانید برای هر مخاطب تنظیمات خاص خود را اعمال کنید مخاطب اول مدیر میباشد همچنین با زدن دکمه استعلام مخاطبین میتوانید اطلاعات مخاطبین را از دستگاه دریافت نمایید در منوی تنظیمات پیشرفته میتوانید تعیین کنید که دستگاه شما تماس های ورودی را فقط از مخاطبین دریافت نمایید',
  'در این صفحه با انتخاب نوع هر نوع زون از منو کشویی تغییر روی دستگاه  اعمال خواهد شد همچنین میتوانید دستور حذف زون را برای هر نوع زون جدا گانه به دستگاه ارسال کنید در انتهای صفحه با زدن دکمه استعلام زونها میتوانید نوع هر نوع زون را از دستگاه دریافت نمایید',
  'در این صفحه شامل کلید تنظیمات مربوط به اپلیکیشن اندروید میباشد با فعال کردن نمایش صفحه رمز بعد از هر بار باز کردن نرم افزار از شما رمز ورود به صورت پیشفرض 0000میباشد همچنین میتوانید با اثر انگشت و یا پسورد تعیین شده وارد نرم افزار شوید در بخش شخصی سازی صفحه اصلی میتوانید تعیین کنید که چه ایتمی در صفحه اصلی نمایش داده شود در بخش زمان تریگر ها میتوانید تعیین کنید که زمان دکمه تریگر که در بخش رله های صفحه اصلی وجود دارد به چه میزان میباشد در بخش تنظیم کپسول شارژ نیز میتوانید به طور مثال عدد 2000تومان رسید خالی نمایش داده شود و به شارژ 50000تومان رسسید کپسول صفحه اصلی کاملا پر نمایش داده شود و با انتخاب تنظیمات برنامه کلیه تنظیمات مربوط به برنامه حذف و به حالت پیشفرض برخوهاد گشت',
  '',
  '',
  '',
  '',
  '',
];

List<String> titletext = [
  'صفحه اصلی',
  'افزودن دستگاه',
  'تنظیم سیمکارت',
  'تنظیمات',
  'تنظیمات عمومی',
  'مخاطبین',
  'زون ها',
  'تنظیمات نرم افزار اندروید',
];

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
          children: [
            SafeArea(
                child: tabbar(
              image: 'images/info-circle.png',
              name: 'راهنمایی',
            )),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: Get.height * 0.9,
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                        titletext.length,
                        (index) => Container(
                              width: Get.width * 0.9,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Column(
                                children: [
                                  Container(
                                    width: Get.width * 0.5,
                                    decoration: boxdecoration1,
                                    child: Center(
                                      child: Text(
                                        titletext[index],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'iransans'),
                                        textAlign: TextAlign.right,
                                        textDirection: TextDirection.rtl,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    helptext[index],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'iransans'),
                                    textAlign: TextAlign.right,
                                    textDirection: TextDirection.rtl,
                                  )
                                ],
                              ),
                            )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
