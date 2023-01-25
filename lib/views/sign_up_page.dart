import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/custom_widgets/functionality/validators.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/reusable_button.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/text_field_form.dart';
import 'package:one_go_app/views/mail_verification_screen_registration.dart';

class SignUpPage extends StatefulWidget {
  static const String id = 'SignUpPage';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isPasswordVisible = true;
  bool isConfirmPasswordVisible = true;
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context);
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                addVerticalSpacing(50),
                const Text(
                  "Sign up",
                  style: boldBlackStyle,
                ),
                addVerticalSpacing(60),
                TextFieldForm(
                  controller: _firstNameController,
                  hintText: 'First Name',
                  keyboardType: TextInputType.name,
                  obscurePassword: false,
                  maxLines: null,
                  suffixIcon: null,
                  maxLength: null,
                  validator: nameValidator,
                ),
                addVerticalSpacing(25),
                TextFieldForm(
                  controller: _lastNameController,
                  hintText: 'Last Name',
                  keyboardType: TextInputType.name,
                  obscurePassword: false,
                  maxLines: null,
                  suffixIcon: null,
                  maxLength: null,
                  validator: nameValidator,
                ),
                addVerticalSpacing(25),
                TextFieldForm(
                  controller: _emailController,
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  obscurePassword: false,
                  maxLines: null,
                  suffixIcon: null,
                  maxLength: null,
                  validator: emailValidator,
                ),
                addVerticalSpacing(25),
                TextFieldForm(
                  controller: _phoneNumberController,
                  hintText: 'Phone Number',
                  keyboardType: TextInputType.phone,
                  obscurePassword: false,
                  maxLines: 1,
                  suffixIcon: null,
                  maxLength: 11,
                  validator: phoneValidator,
                ),
                addVerticalSpacing(25),
                TextFieldForm(
                  controller: _passwordController,
                  hintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  obscurePassword: isPasswordVisible,
                  maxLines: null,
                  maxLength: null,
                  validator: passwordValidator,
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      child: Icon(isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off)),
                ),
                addVerticalSpacing(25),
                TextFieldForm(
                  controller: _confirmPasswordController,
                  hintText: 'Confirm Password',
                  maxLength: null,
                  keyboardType: TextInputType.visiblePassword,
                  obscurePassword: isConfirmPasswordVisible,
                  maxLines: null,
                  validator: matchPasswordValidator,
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isConfirmPasswordVisible = !isConfirmPasswordVisible;
                        });
                      },
                      child: isConfirmPasswordVisible
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off)),
                ),
                addVerticalSpacing(50),
                ReusableButton(
                    const Text(
                      'Complete',
                      style: boldWhiteStyle,
                    ), () {
                  nav.pushNamed(MailVerificationScreenRegistration.id);
                  if (_formKey.currentState!.validate()) {
                    nav.pushNamed(MailVerificationScreenRegistration.id);
                  }
                }, blueColor),
                addVerticalSpacing(100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
