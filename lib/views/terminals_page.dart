import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/terminal_widget.dart';
import 'package:one_go_app/generated/assets.dart';

class Terminals extends StatelessWidget {
  static const String id = 'Terminals';
  const Terminals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset(Assets.figmaPngsTerminals),
            addVerticalSpacing(10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Terminals",
                style: boldBlueStyle.copyWith(fontSize: 30, color: blueColor),
              ),
            ),
            addVerticalSpacing(10),
            TerminalWidget(
              terminalName: 'School Park',
              onTap: () {},
            ),
            addVerticalSpacing(10),
            TerminalWidget(
              terminalName: 'Oke Odo',
              onTap: () {},
            ),
            addVerticalSpacing(10),
            TerminalWidget(
              terminalName: 'MFM',
              onTap: () {},
            ),
            addVerticalSpacing(10),
            TerminalWidget(
              terminalName: 'Chapel',
              onTap: () {},
            ),
            addVerticalSpacing(10),
            TerminalWidget(
              terminalName: 'Sanrab',
              onTap: () {},
            ),
            addVerticalSpacing(10),
            TerminalWidget(
              terminalName: 'Illesanmi',
              onTap: () {},
            ),
            addVerticalSpacing(10),
            TerminalWidget(
              terminalName: 'Mark',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
