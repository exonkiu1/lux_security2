import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_security2/Datebase/Datebase.dart';
import 'package:lux_security2/Getxcontroller/controllercolor.dart';
import 'package:lux_security2/Getxcontroller/controllerphoneinfo.dart';
import 'package:lux_security2/Pages/add%20devices/AddDevices.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/Getxcontroller/controllerOnOff.dart';
import 'package:passcode_screen/circle.dart';
import 'package:passcode_screen/keyboard.dart';
import 'package:passcode_screen/passcode_screen.dart';
// keytool -genkey -v -keystore C:\Users\ehsan\Desktop\flutter\lux_security2\lux.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias lux
//Is CN=ehsan, OU=luxsecurity, O=luxsecurity, L=mashhad, ST=Khorasan Razavi, C=IR correct?

String storedPasscode = '1234';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  String texttilte = 'رمز خود را وارد کنید';
  final StreamController<bool> _verificationNotifier =
      StreamController<bool>.broadcast();

  bool isAuthenticated = false;
  @override
  void initState() {
    //  gotomainpage();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<bool> fetchNetworkCall() async {
      //
      SharedPreferences prefs = await SharedPreferences.getInstance();
      /*  if (prefs.getBool('first7') ?? true == true) {
        PhonesDatabase.instance.alterTable('TypeMicro');
        prefs.setBool('first7', false);
      } */
      Get.find<controlleronoff>(tag: 'secend').utoOnOff.value =
          prefs.getBool('utoOnOff') ?? false;
      Get.find<controllercolor>(tag: 'secend').mode.value =
          prefs.getString('theme') ?? 'light';
      // Get.find<controllercolor>(tag: 'secend').mode.value = 'l';
      storedPasscode = prefs.getString('password') ?? '0000';
      bool lock = prefs.getBool('lock') ?? false;
      // lock = true;
      if (lock == false) {
        gotomainpage();
      } else {
        ehsan();
      }
      return lock;
    }

    return Scaffold(
      body: FutureBuilder<bool>(
          future: fetchNetworkCall(), // async work
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data == true) {
                return Container(
                    height: Get.height,
                    width: Get.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      //begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        colorstheme[Get.find<controllercolor>(tag: 'secend')
                            .mode
                            .value]![0],
                        colorstheme[Get.find<controllercolor>(tag: 'secend')
                            .mode
                            .value]![1],
                      ],
                    )),
                    child: Column(
                      children: [
                        /* Container(
                          width: Get.width * 0.7,
                          height: Get.width * 0.7,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      Get.find<controllercolor>(tag: 'secend')
                                                  .mode
                                                  .value ==
                                              'dark'
                                          ? 'images/logo2.png'
                                          : 'images/logo2.png'))),
                        ), */
                        //  _defaultLockScreenButton(context),
                      ],
                    ));
              } else {
                return Container(
                    height: Get.height,
                    width: Get.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      //begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        colorstheme[Get.find<controllercolor>(tag: 'secend')
                            .mode
                            .value]![0],
                        colorstheme[Get.find<controllercolor>(tag: 'secend')
                            .mode
                            .value]![1],
                        //colorred,
                      ],
                    )),
                    child: Column(
                      children: [
                        /* Container(
                          width: Get.width * 0.7,
                          height: Get.width * 0.7,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      Get.find<controllercolor>(tag: 'secend')
                                                  .mode
                                                  .value ==
                                              'dark'
                                          ? 'images/logo2.png'
                                          : 'images/logo2.png'))),
                        ), */
                      ],
                    ));
              }
            } else {
              return Container(
                width: Get.width * 0.7,
                height: Get.width * 0.7,
                /* decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            Get.find<controllercolor>(tag: 'secend')
                                        .mode
                                        .value ==
                                    'dark'
                                ? 'images/logo2.png'
                                : 'images/logo2.png'))), */
              );
            }
          }),
    );
  }

  void gotomainpage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
/*     Get.find<controlleronoff>(tag: 'secend').moodcolor.value =
          prefs.getBool('darktheme') == true ? 'dark' : 'purple'; */

    print(await prefs.getBool('OnPassword'));
    /*   if (prefs.getBool('OnPassword') ?? false == true) {
      final LocalAuthentication auth = LocalAuthentication();
      // ···
      final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
      if (canAuthenticateWithBiometrics == true) {
        bool authenticated = false;
        try {
          // ignore: deprecated_member_use
          authenticated = await auth.authenticateWithBiometrics(
              localizedReason: 'Scan your fingerprint to authenticate',
              useErrorDialogs: true,
              stickyAuth: true);
        } catch (e) {
          print(e);
        }

        if (authenticated) {
          await Future.delayed(Duration(
            seconds: 1,
          ));
          if (Get.find<controllerphoneinfo>(tag: 'secend')
                  .lenghtmainpage
                  .value !=
              0) {
            Get.offNamed('/HomePage');
          } else {
            Get.off(AddDevices());
          }
        }
        //Yess All OK
        else {
          Get.snackbar('خطا', 'دوباره امتحان کنید');
        }
      } else {
        await Future.delayed(Duration(
          seconds: 1,
        ));
        Get.offNamed('/HomePage');
      }
    } else {
      await Future.delayed(Duration(
        seconds: 1,
      ));
      if (Get.find<controllerphoneinfo>(tag: 'secend').lenghtmainpage.value !=
          0) {
        Get.offNamed('/HomePage');
      } else {
        Get.off(AddDevices());
      }
    } */
  }

  void ehsan() {
    _showLockScreen(
      context,
      opaque: false,
      cancelButton: Text(
        'Cancel',
        style: const TextStyle(fontSize: 16, color: Colors.white),
        semanticsLabel: 'Cancel',
      ),
    );
  }

  _customColorsLockScreenButton(BuildContext context) {
    return MaterialButton(
      color: Theme.of(context).primaryColor,
      child: Text('Open Custom Lock Screen'),
      onPressed: () {
        _showLockScreen(context,
            opaque: false,
            circleUIConfig: CircleUIConfig(
                borderColor: Colors.blue,
                fillColor: Colors.blue,
                circleSize: 30),
            keyboardUIConfig: KeyboardUIConfig(
                digitBorderWidth: 2, primaryColor: Colors.blue),
            cancelButton: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
            digits: ['一', '二', '三', '四', '五', '六', '七', '八', '九', '零']);
      },
    );
  }

  _showLockScreen(
    BuildContext context, {
    required bool opaque,
    CircleUIConfig? circleUIConfig,
    KeyboardUIConfig? keyboardUIConfig,
    required Widget cancelButton,
    List<String>? digits,
  }) {
    Navigator.push(
        context,
        PageRouteBuilder(
          opaque: opaque,
          pageBuilder: (context, animation, secondaryAnimation) =>
              PasscodeScreen(
            title: Text(
              texttilte,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            circleUIConfig: circleUIConfig,
            keyboardUIConfig: keyboardUIConfig,
            passwordEnteredCallback: _onPasscodeEntered,
            cancelButton: cancelButton,
            deleteButton: Text(
              'Delete',
              style: const TextStyle(fontSize: 16, color: Colors.white),
              semanticsLabel: 'Delete',
            ),
            shouldTriggerVerification: _verificationNotifier.stream,
            backgroundColor: Colors.black.withOpacity(0.8),
            cancelCallback: _onPasscodeCancelled,
            digits: digits,
            passwordDigits: 6,
            //bottomWidget: _buildPasscodeRestoreButton(),
          ),
        ));
  }

  _onPasscodeEntered(String enteredPasscode) {
    bool isValid = storedPasscode == enteredPasscode;
    _verificationNotifier.add(isValid);
    if (isValid) {
      setState(() {
        this.isAuthenticated = isValid;
        texttilte = 'صحیح,منتظر بمانید';
      });

      print('seee');
      gotomainpage();
    }
  }

  _onPasscodeCancelled() {
    Navigator.maybePop(context);
  }

  @override
  void dispose() {
    _verificationNotifier.close();
    super.dispose();
  }

  _buildPasscodeRestoreButton() => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(bottom: 10.0, top: 20.0),
          child: TextButton(
            child: Text(
              "Reset passcode",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
            onPressed: _resetAppPassword,
            // splashColor: Colors.white.withOpacity(0.4),
            // highlightColor: Colors.white.withOpacity(0.2),
            // ),
          ),
        ),
      );

  _resetAppPassword() {
    Navigator.maybePop(context).then((result) {
      if (!result) {
        return;
      }
      _showRestoreDialog(() {
        Navigator.maybePop(context);
        //TODO: Clear your stored passcode here
      });
    });
  }

  _showRestoreDialog(VoidCallback onAccepted) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Reset passcode",
            style: const TextStyle(color: Colors.black87),
          ),
          content: Text(
            "Passcode reset is a non-secure operation!\n\nConsider removing all user data if this action performed.",
            style: const TextStyle(color: Colors.black87),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            TextButton(
              child: Text(
                "Cancel",
                style: const TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.maybePop(context);
              },
            ),
            TextButton(
              child: Text(
                "I understand",
                style: const TextStyle(fontSize: 18),
              ),
              onPressed: onAccepted,
            ),
          ],
        );
      },
    );
  }
}
