import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/custom_widgets/dropdown_searchable_button.dart';
import 'package:one_go_app/generated/assets.dart';

class Home extends StatefulWidget {
  static const String id = 'Home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> items = [
    'A_Item1',
    'A_Item2',
    'A_Item3',
    'A_Item4',
    'B_Item1',
    'B_Item2',
    'B_Item3',
    'B_Item4',
  ];
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
                  addVerticalSpacing(20),
                   DropDownButtonSearchable(hint: 'Select pickup location', itemsInList: items),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
