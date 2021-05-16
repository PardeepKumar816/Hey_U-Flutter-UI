import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:hey_u/continueWithNumber.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SginUpWithNumberScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
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
              SizedBox(height: ScreenUtil.screenWidthDp/10,),
              Center(
                child: Text(
                  "What's your mobile number?",
                  style: TextStyle(
                    fontSize: ScreenUtil.screenWidthDp/17,
                  ),
                ),
              ),
              SizedBox(height: ScreenUtil.screenWidthDp/10,),
              Container(
                margin: EdgeInsets.only(left: ScreenUtil.screenWidthDp/20,right: ScreenUtil.screenWidthDp/20),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'PK',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
              ),
              SizedBox(height: ScreenUtil.screenWidthDp/20,),
              ElevatedButton(
                  onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(ScreenUtil.screenWidthDp/25),
                  ),
                ),
                  child: Container(
                    padding: EdgeInsets.only(left: ScreenUtil.screenWidthDp/6,right: ScreenUtil.screenWidthDp/6,
                        top: ScreenUtil.screenWidthDp/60,bottom: ScreenUtil.screenWidthDp/60),
                    child: Text(
                        'Send Code',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil.screenWidthDp/20,
                      ),
                    ),
                  ),
              ),
              SizedBox(height: ScreenUtil.screenWidthDp/45,),
              ContinueWithNumberButton(buttonName: 'Send Code Again',),
              SizedBox(height: ScreenUtil.screenWidthDp/1000,),
              ContinueWithNumberButton(buttonName: 'Use your Email Address',),
            ],
          ),
        ),
      ),
    );
  }
}
