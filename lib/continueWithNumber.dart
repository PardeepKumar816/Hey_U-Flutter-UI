import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hey_u/sginupWithNoScreen.dart';

class ContinueWithNumberButton extends StatelessWidget {

  String buttonName;
  ContinueWithNumberButton({this.buttonName});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SginUpWithNumberScreen()));
        },
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: ScreenUtil.screenWidthDp/20,
          ),
        ),
      style: ButtonStyle(
        //splashFactory: NoSplash.splashFactory
      ),
    );
  }
}
