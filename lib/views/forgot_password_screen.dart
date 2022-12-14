import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/custom_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/home.dart';
import 'package:page_transition/page_transition.dart';



class ForgotPasswordPage extends StatefulWidget {
  static const String id = 'Forgot password screen';
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(Assets.figmaPngsForgotPassword),
                      addVerticalSpacing(20),
                      const Center(
                        child: Text(
                          'Forgot Password',
                          style: boldBlackStyle,
                        ),
                      ),
                      addVerticalSpacing(20),
                      Center(
                        child: Text(
                          'Enter your email to reset your password',
                          style: normalBlackStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      addVerticalSpacing(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Email',
                            hintStyle: normalBlackStyle,
                          ),
                        ),
                      ),
                      addVerticalSpacing(20),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ReusableButton(
                        const Text(
                          'Verify',
                          style: boldWhiteStyle,
                        ), () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: Home(),
                                type: PageTransitionType.rightToLeft));
                      }
                    }, blueColor),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     const Text(
                  //       'Don\'t have an account?',
                  //       style: normalBlackStyle,
                  //     ),
                  //     TextButton(
                  //       onPressed: () {
                  //         Navigator.pushNamed(context, SignUpPage.id);
                  //       },
                  //       child: const Text(
                  //         'Sign Up',
                  //         style: boldBlackStyle,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}
