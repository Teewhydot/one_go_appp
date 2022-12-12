import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/constants.dart';


class TextFieldForm extends StatelessWidget {
  const TextFieldForm(
      {super.key,
        required TextEditingController controller,
        required this.hintText,
        required this.obscurePassword,
        required this.suffixIcon,
        required this.keyboardType})
      : _controller = controller;

  final TextEditingController _controller;
  final String hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
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
        suffixIcon: suffixIcon,
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
