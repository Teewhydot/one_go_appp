import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/custom_widgets/reusable_button.dart';
import 'package:one_go_app/custom_widgets/validators.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/forgot_password_screen.dart';
import 'package:one_go_app/views/mail_verification_screen.dart';
import 'package:page_transition/page_transition.dart';


class SignInPage extends StatefulWidget {
  static const String id = 'SignInPage';

  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      addVerticalSpacing(50),
                      Image.asset(Assets.figmaPngsSignIn),
                      addVerticalSpacing(20),
                      Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TextFormField(
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: emailValidator,
                              onChanged: (value) {
                                email = value;
                              },
                              decoration: const InputDecoration(
                                hintText: 'Email address',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                              ),
                            ),
                            addVerticalSpacing(50),
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
                            addVerticalSpacing(20),
                            RichText(
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'Forgot password?',
                                    style: linkStyle.copyWith(fontSize: 15),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                      print('tapped');
                                        Navigator.pushNamed(
                                            context, ForgotPasswordPage.id);
                                      }),
                              ]),
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
                          'Sign in',
                          style: boldWhiteStyle,
                        ),
                        () {
                          Navigator.push(context, PageTransition(child: const MailVerificationScreen(), type: PageTransitionType.leftToRight));
                        },
                        blueColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
