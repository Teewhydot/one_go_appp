// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';


class RoundTourCardButton extends StatelessWidget {

  final  icon;
  final  onPressed;
  const RoundTourCardButton(this.icon, this.onPressed, {super.key});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF1F66D0),
      child: Icon(icon),
    );
  }
}
