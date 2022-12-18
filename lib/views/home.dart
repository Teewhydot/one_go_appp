import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/custom_widgets/dropdown_searchable_button.dart';
import 'package:one_go_app/custom_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/drawer/drawer_screen.dart';

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
  // create form key
  final _formKey = GlobalKey<FormState>();
  final List<String> noOfSeats = ['1', '2', '3', '4', '5', '6', '7', '8'];
  final int _accountBalance = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: const DrawerScreen(),
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Padding(
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
                  DropDownButtonSearchable(
                      hint: 'Select pickup location', itemsInList: items),
                  addVerticalSpacing(5),
                  Image.asset(Assets.figmaPngsArrowDown, height: 60),
                  addVerticalSpacing(5),
                  DropDownButtonSearchable(
                      hint: 'Select destination location', itemsInList: items),
                  addVerticalSpacing(30),
                  DropDownButtonSearchable(
                      hint: 'Number of seats', itemsInList: noOfSeats),
                ],
              ),
            ),
            addVerticalSpacing(30),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0,left: 15,right: 15),
              child: ReusableButton(const Text('Proceed',style: boldWhiteStyle,), (){
                if(_formKey.currentState!.validate()){
                  // do something
                } else {}
              }, blueColor),
            ),
          ],
        ),
      ),
    );
  }
}