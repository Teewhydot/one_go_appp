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
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Image.asset(Assets.figmaPngsTerminals),
                    addVerticalSpacing(10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Terminals",
                        style: boldBlueStyle.copyWith(fontSize: 30),
                      ),
                    ),
                    addVerticalSpacing(10),
                    TerminalWidget(
                      terminalName: 'School Bus',
                      onTap: () {},
                    ),
                    addVerticalSpacing(10),
                    TerminalWidget(
                      terminalName: 'School Bus',
                      onTap: () {},
                    ),
                    addVerticalSpacing(10),
                    TerminalWidget(
                      terminalName: 'School Bus',
                      onTap: () {},
                    ),
                    addVerticalSpacing(10),
                    TerminalWidget(
                      terminalName: 'School Bus',
                      onTap: () {},
                    ),
                    addVerticalSpacing(10),
                    TerminalWidget(
                      terminalName: 'School Bus',
                      onTap: () {},
                    ),
                    addVerticalSpacing(10),
                    TerminalWidget(
                      terminalName: 'School Bus',
                      onTap: () {},
                    ),
                    addVerticalSpacing(10),
                    TerminalWidget(
                      terminalName: 'School Bus',
                      onTap: () {},
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
