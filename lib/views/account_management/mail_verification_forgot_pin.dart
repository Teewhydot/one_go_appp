import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/custom_widgets/functionality/validators.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/account_management/forgot_pin_page_step_two.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class MailVerificationScreenForgotPin extends StatefulWidget {
  static const String id = 'Mail verification screen forgot pin';
  const MailVerificationScreenForgotPin({Key? key}) : super(key: key);

  @override
  State<MailVerificationScreenForgotPin> createState() =>
      _MailVerificationScreenForgotPinState();
}

class _MailVerificationScreenForgotPinState
    extends State<MailVerificationScreenForgotPin> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Image.asset(
                      Assets.figmaPngsOtpVerification,
                      height: 233.h,
                    ),
                  ),
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
                          padding:
                              const EdgeInsets.only(left: 46.0, right: 46.0),
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
                                  style:
                                      normalBlackStyle.copyWith(fontSize: 16)),
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
                    nav.pushNamed(ForgotEwalletPinStepTwo.id);
                  }
                }, blueColor),
              ),
              addVerticalSpacing(100),
            ],
          ),
        ),
      ),
    );
  }
}
