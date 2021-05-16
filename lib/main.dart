import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hey_u/LoginScreen.dart';
import 'package:hey_u/continueWithNumber.dart';
import 'package:hey_u/loginButton.dart';
import 'package:hey_u/sginupWithNoScreen.dart';
import 'package:hey_u/splashScreen.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 550, height: 1334)..init(context);
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: SafeArea(
          child: FirstScreen(),
      ),
    );
  }
}
