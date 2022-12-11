import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/custom_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          children: [
           Expanded(child: Center(
             child: Column(
               children: [
                 Expanded(child: Image.asset(Assets.figmaPngsOnegoImage)),
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: ReusableButton(const Text('Sign in',style: boldWhiteStyle,), (){},blueColor),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: ReusableButton(const Text('Sign up',style: normalBlueStyle,), (){},whiteColor),
                 ),
                 addVerticalSpacing(50),
                ],
             ),
           )),
          ],
        ),
      ),
    );
  }
}
