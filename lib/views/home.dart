import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/generated/assets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final int _accountBalance = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  addVerticalSpacing(90),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(Assets.figmaPngsLargeMenuBar,
                          height: 50)),
                  addVerticalSpacing(20),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(Assets.figmaPngsDollarSign),
                    ),
                  ),
                  addVerticalSpacing(40),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(children: [
                      Text(
                        _accountBalance.toString(),
                        style: boldBlueStyle.copyWith(fontSize: 60),
                      ),
                      addHorizontalSpacing(20),
                      Text(
                        'NGN',
                        style: boldBlueStyle.copyWith(fontSize: 60),
                      ),
                    ]),
                  ),
                  addVerticalSpacing(20),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Hello Mr. John Doe',
                      style: boldBlueStyle.copyWith(fontSize: 40),
                    ),
                  ),
                  addVerticalSpacing(5),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Lets book you up',
                      style: boldBlueStyle.copyWith(fontSize: 40),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
