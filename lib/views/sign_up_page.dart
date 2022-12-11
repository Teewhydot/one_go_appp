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
  bool isPasswordVisible = true;
  bool isConfirmPasswordVisible = true;
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  addVerticalSpacing(100),
                  TextFieldForm(controller: _firstNameController, hintText: 'First Name',),
                  addVerticalSpacing(50),
                  TextFieldForm(controller: _lastNameController, hintText: 'Last Name',),
                  addVerticalSpacing(50),
                  TextFieldForm(controller: _emailController, hintText: 'Email',),
                  addVerticalSpacing(50),
                  TextFieldForm(controller: _phoneNumberController, hintText: 'Phone Number',),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ReusableButton(
                        const Text(
                          'Sign Up',
                          style: boldWhiteStyle,
                        ),
                        () {},
                        blueColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({
    super.key,
    required TextEditingController controller,required this.hintText,
  }) : _controller = controller;

  final TextEditingController _controller;
  final String hintText;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        controller: _controller,
        cursorColor: Colors.black,
        minLines: 1,
        maxLines: null,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          filled: true,
          fillColor: textFieldFillColor,
          focusColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
          ),
          border: OutlineInputBorder(
            borderSide:
            const BorderSide(width: 0, style: BorderStyle.none),
            borderRadius: BorderRadius.circular(25.r),
          ),
          hintText: "First Name",
          contentPadding: EdgeInsets.symmetric(
              vertical: 10.0.h, horizontal: 20.0.w),
        ),
      ),
    );
  }
}