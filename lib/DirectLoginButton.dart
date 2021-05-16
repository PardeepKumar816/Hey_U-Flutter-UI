import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DirectLoginButton extends StatelessWidget {
  const DirectLoginButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){},
        child: Text(
          'Login',
          style: TextStyle(
            fontSize: ScreenUtil.screenWidthDp/30,
          ),
        ),
    );
  }
}
