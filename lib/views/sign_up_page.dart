import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/custom_widgets/reusable_button.dart';

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
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              addVerticalSpacing(165),
              const Text(
                "Sign up",
                style: boldBlackStyle,
              ),
              addVerticalSpacing(60),
              TextFieldForm(
                controller: _firstNameController,
                hintText: 'First Name',
                keyboardType: TextInputType.name,
                obscurePassword: null,
              ),
              addVerticalSpacing(25),
              TextFieldForm(
                controller: _lastNameController,
                hintText: 'Last Name',
                keyboardType: TextInputType.name,
                obscurePassword: null,
              ),
              addVerticalSpacing(25),
              TextFieldForm(
                controller: _emailController,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                obscurePassword: null,
              ),
              addVerticalSpacing(25),
              TextFieldForm(
                controller: _phoneNumberController,
                hintText: 'Phone Number',
                keyboardType: TextInputType.phone,
                obscurePassword: null,
              ),
              addVerticalSpacing(25),
              TextFieldForm(
                controller: _passwordController,
                hintText: 'Password',
                keyboardType: TextInputType.visiblePassword,
                obscurePassword: isPasswordVisible,
              ),
              addVerticalSpacing(25),
              TextFieldForm(
                controller: _confirmPasswordController,
                hintText: 'Confirm Password',
                keyboardType: TextInputType.visiblePassword,
                obscurePassword: isConfirmPasswordVisible,
              ),
              addVerticalSpacing(50),
              ReusableButton(
                  const Text(
                    'Complete',
                    style: boldWhiteStyle,
                  ),
                  () {},
                  blueColor),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldForm extends StatelessWidget {
  const TextFieldForm(
      {super.key,
      required TextEditingController controller,
      required this.hintText,
      required this.obscurePassword,
      required this.keyboardType})
      : _controller = controller;

  final TextEditingController _controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool? obscurePassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      cursorColor: Colors.black,
      minLines: 1,
      maxLines: null,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: textFieldFillColor,
        focusColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 0, style: BorderStyle.none),
          borderRadius: BorderRadius.circular(25.r),
        ),
        hintText: hintText,
        contentPadding:
            EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 20.0.w),
      ),
    );
  }
}
