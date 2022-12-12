import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/custom_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/sign_in_page.dart';
import 'package:one_go_app/views/sign_up_page.dart';

class WelcomePage extends StatelessWidget {
  static const String id = 'WelcomePage';
  const WelcomePage({Key? key}) : super(key: key);

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
                  Expanded(child: Image.asset(Assets.figmaPngsOnegoImage)),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ReusableButton(
                        const Text(
                          'Sign in',
                          style: boldWhiteStyle,
                        ), () {
                      Navigator.pushNamed(context, SignInPage.id);
                    }, blueColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ReusableButton(
                        const Text(
                          'Sign up',
                          style: normalBlueStyle,
                        ), () {
                      Navigator.pushNamed(context, SignUpPage.id);
                    }, whiteColor),
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
