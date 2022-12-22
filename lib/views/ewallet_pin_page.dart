// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/custom_widgets/reusable_button.dart';
import 'package:one_go_app/custom_widgets/validators.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/forgot_password_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class E_WalletPinPage extends StatefulWidget {
  static const String id = 'E-Wallet Pin Page';
  const E_WalletPinPage({Key? key}) : super(key: key);

  @override
  State<E_WalletPinPage> createState() => _E_WalletPinPageState();
}

class _E_WalletPinPageState extends State<E_WalletPinPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(Assets.figmaPngsWalletPinPage),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        addVerticalSpacing(30),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "E-wallet pin",
                              style: boldBlackStyle.copyWith(fontSize: 30.sp),
                            )),
                        addVerticalSpacing(50),
                        Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
