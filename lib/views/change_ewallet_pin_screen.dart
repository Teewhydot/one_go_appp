// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/custom_widgets/reusable_button.dart';
import 'package:one_go_app/custom_widgets/validators.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/forgot_password_screen.dart';

class ChangeE_WalletPinPage extends StatefulWidget {
  static const String id = 'Change E-Wallet Pin Page';
  const ChangeE_WalletPinPage({Key? key}) : super(key: key);

  @override
  State<ChangeE_WalletPinPage> createState() => _ChangeE_WalletPinPageState();
}

class _ChangeE_WalletPinPageState extends State<ChangeE_WalletPinPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: whiteColor,
        body: SafeArea(
          child: Column(
            children: [
              Image.asset(Assets.figmaPngsWalletPinPage),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          addVerticalSpacing(30),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Change E-wallet pin",
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
                                    hintText: "Enter your old pin",
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
                                            'Book',
                                            style: boldWhiteStyle,
                                          ), () {
                                        if (_formKey.currentState!.validate()) {
                                          Navigator.pushNamed(
                                              context, ForgotPasswordPage.id);
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
              ),
            ],
          ),
        ));
  }
}
