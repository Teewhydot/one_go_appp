import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/custom_widgets/reusable_button.dart';
import 'package:one_go_app/custom_widgets/validators.dart';
import 'package:one_go_app/generated/assets.dart';

class ChangePasswordScreen extends StatefulWidget {
  static const String id = 'Change password screen';
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    bool isPasswordVisible = true;
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(Assets.figmaPngsChangePassword),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(15.0.r),
                  child: ListView(
                    children: [
                      addVerticalSpacing(10),
                      Text("Change your password", style: boldBlackStyle.copyWith(fontSize: 30.sp),),
                      addVerticalSpacing(30),
                      Text("Old password", style: boldBlackStyle.copyWith(fontSize: 20.sp),),
                      addVerticalSpacing(10),
                      TextFormField(
                        validator: passwordValidator,
                        obscureText: isPasswordVisible,
                        obscuringCharacter: '*',
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (value) {
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
                      Text("New password", style: boldBlackStyle.copyWith(fontSize: 20.sp),),
                      addVerticalSpacing(10),
                      TextFormField(
                        validator: passwordValidator,
                        obscureText: isPasswordVisible,
                        obscuringCharacter: '*',
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (value) {
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
                      Text("Confirm new password", style: boldBlackStyle.copyWith(fontSize: 20.sp),),
                      addVerticalSpacing(10),
                      TextFormField(
                        validator: passwordValidator,
                        obscureText: isPasswordVisible,
                        obscuringCharacter: '*',
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (value) {
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
                      ReusableButton(const Text('Done',style: boldWhiteStyle,), (){}, blueColor)
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
