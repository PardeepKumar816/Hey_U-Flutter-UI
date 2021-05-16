import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
   String assetName;
   String buttonText;

   LoginButton({this.assetName,this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: ScreenUtil.screenWidthDp/20,right:20),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white.withOpacity(0.8)),
          minimumSize: MaterialStateProperty.all(Size.fromHeight(ScreenUtil.screenWidthDp/8))
        ),
        onPressed: (){},
        child: Row(
          children: [
            Container(
              child: Image.asset(assetName,width: ScreenUtil.screenWidthDp/10,height: ScreenUtil.screenWidthDp/13,),
            ),
            SizedBox(width: ScreenUtil.screenWidthDp/10,),
            Text(
              buttonText,
              style: TextStyle(
                fontSize: ScreenUtil.screenWidthDp/20,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
