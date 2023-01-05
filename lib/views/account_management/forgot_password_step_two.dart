import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/custom_widgets/functionality/validators.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';

class ForgotPasswordStepTwo extends StatefulWidget {
  static const String id = 'Forgot password step two';
  const ForgotPasswordStepTwo({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordStepTwo> createState() => _ForgotPasswordStepTwoState();
}

class _ForgotPasswordStepTwoState extends State<ForgotPasswordStepTwo> {
  @override
  Widget build(BuildContext context) {
    bool isPasswordVisible = true;
    String password = '';
    return Scaffold(
      body: Column(
        children: [
          Image.asset(Assets.figmaPngsForgotPasswordTwo),
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(15.0.r),
                child: ListView(
                  children: [
                    addVerticalSpacing(10),
                    Text(
                      "Forgot password",
                      style: boldBlackStyle.copyWith(fontSize: 30.sp),
                    ),
                    addVerticalSpacing(30),
                    Text(
                      "New password",
                      style: boldBlackStyle.copyWith(fontSize: 20.sp),
                    ),
                    addVerticalSpacing(10),
                    TextFormField(
                      validator: passwordValidator,
                      obscureText: isPasswordVisible,
                      obscuringCharacter: '*',
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                            child: const Icon(Icons.visibility)),
                        hintText: 'Password',
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                    ),
                    addVerticalSpacing(30),
                    Text(
                      "Confirm password",
                      style: boldBlackStyle.copyWith(fontSize: 20.sp),
                    ),
                    addVerticalSpacing(10),
                    TextFormField(
                      validator: passwordValidator,
                      obscureText: isPasswordVisible,
                      obscuringCharacter: '*',
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                            child: const Icon(Icons.visibility)),
                        hintText: 'Password',
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                    ),
                    addVerticalSpacing(60),
                    ReusableButton(
                        const Text(
                          'Done',
                          style: boldWhiteStyle,
                        ),
                        () {},
                        blueColor)
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
