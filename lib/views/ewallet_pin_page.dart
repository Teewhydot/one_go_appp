// ignore_for_file: camel_case_types
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/custom_widgets/functionality/validators.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/account_management/forgot_pin_page.dart';
import 'package:one_go_app/views/home.dart';
import 'package:one_go_app/views/no_shuttle.dart';
import 'package:one_go_app/views/ride_tracking_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class E_WalletPinPage extends StatefulWidget {
  static const String id = 'E-Wallet Pin Page';
  final shuttleAvailability availability;
  const E_WalletPinPage({Key? key, required this.availability})
      : super(key: key);

  @override
  State<E_WalletPinPage> createState() => _E_WalletPinPageState();
}

class _E_WalletPinPageState extends State<E_WalletPinPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context);
    return Scaffold(
        backgroundColor: whiteColor,
        body: ListView(
          children: [
            Image.asset(
              Assets.figmaPngsWalletPinPage,
              fit: BoxFit.cover,
            ),
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
                                    child: const ForgotPinPage(),
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
                      widget.availability == shuttleAvailability.available
                          ? nav.pushNamed(RideTrackingPage.id)
                          : nav.pushNamed(NoShuttleScreen.id);
                    }
                  }, blueColor),
                  addVerticalSpacing(30),
                  ReusableButton(
                      const Text(
                        'Cancel',
                        style: boldWhiteStyle,
                      ), () {
                    nav.pop();
                  }, blueColor),
                  addVerticalSpacing(20),
                ],
              ),
            ),
          ],
        ));
  }
}
