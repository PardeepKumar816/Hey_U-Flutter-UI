import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hey_u/LoginScreen.dart';
import 'dart:async';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen() )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.blue.shade300.withOpacity(1),
             gradient: LinearGradient(
               begin: Alignment.bottomRight,
               end: Alignment.bottomLeft,
               colors: [
                 Colors.blue.withOpacity(0.6),
                 Colors.blue.withOpacity(0.9),
               ]
             ),
            ),
          ),
          Center(
            child: Text(
              'Hey U!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: ScreenUtil.screenWidthDp/10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
