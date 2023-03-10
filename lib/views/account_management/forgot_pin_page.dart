import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/account_management/mail_verification_forgot_pin.dart';
import 'package:page_transition/page_transition.dart';

class ForgotPinPage extends StatefulWidget {
  static const String id = 'Forgot Pin screen';
  const ForgotPinPage({Key? key}) : super(key: key);

  @override
  State<ForgotPinPage> createState() => _ForgotPinPageState();
}

class _ForgotPinPageState extends State<ForgotPinPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Column(
                children: [
                  Image.asset(
                    Assets.figmaPngsForgotPassword,
                    fit: BoxFit.fitWidth,
                  ),
                  addVerticalSpacing(10),
                  const Center(
                    child: Text(
                      'Forgot Pin',
                      style: boldBlackStyle,
                    ),
                  ),
                  addVerticalSpacing(10),
                  Center(
                    child: Text(
                      'Enter your email to reset your pin',
                      style: normalBlackStyle.copyWith(fontSize: 16),
                    ),
                  ),
                  addVerticalSpacing(10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        hintStyle: normalBlackStyle,
                      ),
                    ),
                  ),
                  addVerticalSpacing(10),
                ],
              ),
              addVerticalSpacing(50),
              Padding(
                padding: EdgeInsets.all(20.0.r),
                child: ReusableButton(
                    const Text(
                      'Verify',
                      style: boldWhiteStyle,
                    ), () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: const MailVerificationScreenForgotPin(),
                            type: PageTransitionType.rightToLeft));
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
