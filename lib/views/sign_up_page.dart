import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/custom_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';

class SignUpPage extends StatelessWidget {
  static const String id = 'SignUpPage';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ReusableButton(
                          const Text(
                            'Sign Up',
                            style: boldWhiteStyle,
                          ),
                          () {},
                          blueColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}