// ignore_for_file: camel_case_types
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

class SetWalletPin extends StatefulWidget {
  static const String id = 'Set Wallet Pin';
  const SetWalletPin({Key? key}) : super(key: key);

  @override
  State<SetWalletPin> createState() => _SetWalletPinState();
}

class _SetWalletPinState extends State<SetWalletPin> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          child: ListView(
            children: [
              Image.asset(Assets.figmaPngsWalletPinPage),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    addVerticalSpacing(30),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Set E-wallet pin",
                          style: boldBlackStyle.copyWith(fontSize: 30.sp),
                        )),
                    addVerticalSpacing(20),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Wallet Pin',
                        style: boldBlackStyle.copyWith(fontSize: 20.sp),
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
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
                          addVerticalSpacing(20),
                          Text(
                            'Confirm Wallet Pin',
                            style: boldBlackStyle.copyWith(fontSize: 20.sp),
                          ),
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
                        ],
                      ),
                    ),
                    addVerticalSpacing(30),
                    // rich text for forgot password
                    Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          text: 'Forgot wallet pin?',
                          style: TextStyle(
                            color: blueColor,
                            fontSize: 20.sp,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: const ForgotPasswordPage(),
                                      type: PageTransitionType.rightToLeft));
                            },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    ReusableButton(
                        const Text(
                          'Book',
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
                    addVerticalSpacing(30),
                    ReusableButton(
                        const Text(
                          'Cancel',
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
                    addVerticalSpacing(20),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
