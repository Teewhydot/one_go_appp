import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/custom_widgets/reusable_button.dart';
import 'package:one_go_app/custom_widgets/validators.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/forgot_password_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class MailVerificationScreen extends StatefulWidget {
  const MailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<MailVerificationScreen> createState() => _MailVerificationScreenState();
}

class _MailVerificationScreenState extends State<MailVerificationScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      addVerticalSpacing(50),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Image.asset(Assets.figmaPngsOtpVerification),
                      ),
                      addVerticalSpacing(20),
                      Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            addVerticalSpacing(20),
                            const Center(
                              child: Text(
                                'OTP Verification',
                                style: boldBlackStyle,
                              ),
                            ),
                            addVerticalSpacing(20),
                            Center(
                              child: Text(
                                'Enter the OTP sent to your email',
                                style: normalBlackStyle.copyWith(fontSize: 16),
                              ),
                            ),
                            addVerticalSpacing(20),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 46.0, right: 46.0),
                              child: PinCodeTextField(
                                  validator: otpValidator,
                                  appContext: context,
                                  obscureText: false,
                                  keyboardType: TextInputType.phone,
                                  length: 4,
                                  onChanged: (value) {}),
                            ),
                            addVerticalSpacing(40),
                            Center(
                              child: RichText(
                                text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                      text: 'Didn\'t receive the code? ',
                                      style: normalBlackStyle.copyWith(
                                          fontSize: 16)),
                                  TextSpan(
                                      text: 'Resend OTP?',
                                      style: linkStyle.copyWith(fontSize: 15),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {}),
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ),
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
                                child: const ForgotPasswordPage(),
                                type: PageTransitionType.rightToLeft));
                      }
                    }, blueColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
