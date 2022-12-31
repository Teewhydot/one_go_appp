import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            'Forgot Password',
                            style: boldBlackStyle,
                          ),
                        ),
                        addVerticalSpacing(10),
                        Center(
                          child: Text(
                            'Enter your email to reset your password',
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
                                  child: const Home(),
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
      ),
    );
  }
}
