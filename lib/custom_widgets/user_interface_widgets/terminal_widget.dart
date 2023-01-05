import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';

class TerminalWidget extends StatelessWidget {
  final String terminalName;
  final Function onTap;
  const TerminalWidget(
      {super.key, required this.terminalName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: Container(
        height: 50,
        width: 222,
        decoration: const BoxDecoration(
          color: textFieldFillColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Center(
          child: Text(
            terminalName,
            style: boldBlueStyle,
          ),
        ),
      ),
    );
  }
}
