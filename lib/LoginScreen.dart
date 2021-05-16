import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:hey_u/DirectLoginButton.dart';
import 'package:hey_u/continueWithNumber.dart';
import 'package:hey_u/loginButton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: (MediaQuery.of(context).size.height>735 && MediaQuery.of(context).size.width<600)
              ?EdgeInsets.only(top: ScreenUtil.screenWidthDp/3) : EdgeInsets.only(top: ScreenUtil.screenWidthDp/6),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Hey U!',
                  style: TextStyle(
                    fontSize: ScreenUtil.screenWidthDp/5,
                  ),
                ),
              ),
              SizedBox(height: ScreenUtil.screenWidthDp/10),
              LoginButton(assetName: 'assets/google.png',buttonText: 'Continue with Google',),
              SizedBox(height: (MediaQuery.of(context).size.height>735 && MediaQuery.of(context).size.width<600)
                  ? ScreenUtil.screenWidthDp/15 : ScreenUtil.screenWidthDp/40),
              LoginButton(assetName: 'assets/facebook.png',buttonText: 'Continue with Facebook',),
              SizedBox(height: (MediaQuery.of(context).size.height>735 && MediaQuery.of(context).size.width<600)
                  ? ScreenUtil.screenWidthDp/15 : ScreenUtil.screenWidthDp/40),
              LoginButton(assetName: 'assets/apple.jpg',buttonText: 'Continue with Apple',),
              SizedBox(height: (MediaQuery.of(context).size.height>735 && MediaQuery.of(context).size.width<600)
                  ? ScreenUtil.screenWidthDp/10 : ScreenUtil.screenWidthDp/25),
              Text(
                '----------------------------or----------------------------',
                style: TextStyle(
                  fontSize: ScreenUtil.screenWidthDp/20,
                ),
              ),
              SizedBox(height: (MediaQuery.of(context).size.height>735 && MediaQuery.of(context).size.width<600)
                  ? ScreenUtil.screenWidthDp/10 : ScreenUtil.screenWidthDp/25),
              ContinueWithNumberButton(buttonName: 'Continue with phone number'),
              SizedBox(height: (MediaQuery.of(context).size.height>735 && MediaQuery.of(context).size.width<600)
                  ? ScreenUtil.screenWidthDp/10 : ScreenUtil.screenWidthDp/25),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: ScreenUtil.screenWidthDp/30,
                    ),
                  ),
                  DirectLoginButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
