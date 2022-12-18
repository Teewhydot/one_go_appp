import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/custom_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';

class SeatBookedSuccess extends StatelessWidget {
  static const String id = 'SeatBookedSuccess';
  const SeatBookedSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset(Assets.figmaPngsLargeGreenCheckmark)),
        addVerticalSpacing(30),
        const Text(
          'You have successfully booked your seat',
          style:boldBlueStyle,
        ),
        addVerticalSpacing(30),
        const Align(
          alignment: Alignment.bottomCenter,
          child: CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage(Assets.figmaPngsDollarSign),
          ),
        ),
        addVerticalSpacing(60),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ReusableButton(const Text('Proceed',style: boldWhiteStyle,), (){}, blueColor),
        ),


      ],
    ));
  }
}
