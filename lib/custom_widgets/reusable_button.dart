// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/constants.dart';

class ReusableButton extends StatelessWidget {
  final buttonText;
  final onPressed;
  final buttonColor;

  const ReusableButton(this.buttonText, this.onPressed, this.buttonColor,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 64.h,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(buttonColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                          side: const BorderSide(color: Colors.blue)))),
              onPressed: onPressed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  addHorizontalSpacing(40),
                  buttonText,
                  const Icon(Icons.arrow_forward_ios_sharp),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
