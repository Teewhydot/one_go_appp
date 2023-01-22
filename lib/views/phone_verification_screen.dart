import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/custom_widgets/functionality/validators.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/account_management/forgot_password_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneVerificationScreen extends StatefulWidget {
  static const String id = 'Phone number verification screen';
  const PhoneVerificationScreen({Key? key}) : super(key: key);

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          Column(
            children: [
              addVerticalSpacing(50),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Image.asset(
                  Assets.figmaPngsOtpVerification,
                  height: 233.h,
                ),
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
                        'Phone Verification',
                        style: boldBlackStyle,
                      ),
                    ),
                    addVerticalSpacing(20),
                    Center(
                      child: Text(
                        'Enter the OTP sent to your phone',
                        style: normalBlackStyle.copyWith(fontSize: 16),
                      ),
                    ),
                    addVerticalSpacing(20),
                    Padding(
                      padding: const EdgeInsets.only(left: 46.0, right: 46.0),
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
                              style: normalBlackStyle.copyWith(fontSize: 16)),
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
          addVerticalSpacing(100),
        ],
      ),
    );
  }
}
