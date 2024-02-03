// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Getxcontroller/controllershow.dart';
import 'package:lux_security2/color.dart';

class PersonalityApp extends StatefulWidget {
  const PersonalityApp({Key? key}) : super(key: key);

  @override
  State<PersonalityApp> createState() => _PersonalityAppState();
}

class _PersonalityAppState extends State<PersonalityApp> {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                  child: tabbar(
                image: 'images/profile-circle.png',
                name: 'شخصی سازی',
              )),
              listshowchek()
            ],
          ),
        ),
      ),
    );
  }
}
