// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/custom_widgets/functionality/validators.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/home.dart';

class ForgotEwalletPinStepTwo extends StatefulWidget {
  static const String id = 'Forgot Ewallet Pin Step Two';
  const ForgotEwalletPinStepTwo({Key? key}) : super(key: key);

  @override
  State<ForgotEwalletPinStepTwo> createState() =>
      _ForgotEwalletPinStepTwoState();
}

class _ForgotEwalletPinStepTwoState extends State<ForgotEwalletPinStepTwo> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: whiteColor,
        body: SafeArea(
          child: ListView(
            children: [
              Image.asset(Assets.figmaPngsWalletPinPage),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    addVerticalSpacing(30),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Forgot E-wallet pin",
                          style: boldBlackStyle.copyWith(fontSize: 30.sp),
                        )),
                    addVerticalSpacing(50),
                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            validator: pinValidator,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: "Enter your new pin",
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontSize: 20.sp),
                            ),
                          ),
                          addVerticalSpacing(40),
                          TextFormField(
                            validator: pinValidator,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: "Confirm your new pin",
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontSize: 20.sp),
                            ),
                          ),
                          addVerticalSpacing(50),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                ReusableButton(
                                    const Text(
                                      'Proceed',
                                      style: boldWhiteStyle,
                                    ), () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.pushReplacementNamed(
                                        context, Home.id);
                                  }
                                }, blueColor),
                                addVerticalSpacing(20),
                              ],
                            ),
                          ),
                          addVerticalSpacing(50),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
