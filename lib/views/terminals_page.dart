import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
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
                     TerminalWidget(terminalName: 'School Bus', onTap: (){},),
                    addVerticalSpacing(10),
                    TerminalWidget(terminalName: 'School Bus', onTap: (){},),
                    addVerticalSpacing(10),
                    TerminalWidget(terminalName: 'School Bus', onTap: (){},),
                    addVerticalSpacing(10),
                    TerminalWidget(terminalName: 'School Bus', onTap: (){},),
                    addVerticalSpacing(10),
                    TerminalWidget(terminalName: 'School Bus', onTap: (){},),
                    addVerticalSpacing(10),
                    TerminalWidget(terminalName: 'School Bus', onTap: (){},),
                    addVerticalSpacing(10),
                    TerminalWidget(terminalName: 'School Bus', onTap: (){},),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class TerminalWidget extends StatelessWidget {
final String terminalName;
final Function onTap;
const TerminalWidget({super.key, required this.terminalName,required this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
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
