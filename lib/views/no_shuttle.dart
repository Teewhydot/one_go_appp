import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';

class NoShuttleScreen extends StatelessWidget {
  static const String id = 'No shuttle screen';
  const NoShuttleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            addVerticalSpacing(50),
            Image.asset(Assets.figmaPngsNoAvailableBus),
            addVerticalSpacing(30),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'No available shuttle for the selected destination',
                style: boldBlueStyle,
              ),
            ),
            addVerticalSpacing(20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ReusableButton(
                  const Text(
                    'Join queue',
                    style: boldWhiteStyle,
                  ),
                  () {},
                  blueColor),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Continue',
                style: boldBlueStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
