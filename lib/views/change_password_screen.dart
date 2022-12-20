import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/generated/assets.dart';

class ChangePasswordScreen extends StatelessWidget {
  static const String id = 'Change password screen';
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(Assets.figmaPngsChangePassword),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    addVerticalSpacing(10),
                    Text("Change your password", style: boldBlackStyle.copyWith(fontSize: 30.sp),),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
