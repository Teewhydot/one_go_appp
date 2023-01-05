// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/drawer_item.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/account_management/change_password_screen.dart';
import 'package:one_go_app/views/history.dart';
import 'package:one_go_app/views/no_shuttle.dart';
import 'package:one_go_app/views/ride_tracking_page.dart';
import 'package:one_go_app/views/top_up_page.dart';

class DrawerScreen extends StatelessWidget {
  static const String id = 'DrawerScreen';
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context);
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 150.h,
                  color: whiteColor,
                  child: Row(
                    children: [
                      addHorizontalSpacing(10),
                      Card(
                        borderOnForeground: true,
                        shape: SmoothRectangleBorder(
                          borderRadius: SmoothBorderRadius(
                            cornerRadius: 20,
                            cornerSmoothing: 0.1,
                          ),
                        ),
                        elevation: 5,
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          height: 40.h,
                          width: 40.w,
                          child: const Center(
                            child: Icon(
                              Icons.person,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                      addHorizontalSpacing(10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('John Doe',
                              style: boldBlackStyle.copyWith(fontSize: 21)),
                          addVerticalSpacing(10),
                          const Text(
                            'ben@gmail.com',
                            style: normalBlackStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                DrawerItem(
                    image: Image.asset(Assets.figmaPngsEmail),
                    text: 'Profile',
                    onTap: () {}),
                DrawerItem(
                    image: Image.asset(Assets.figmaPngsEmail),
                    text: 'Transactions',
                    onTap: () {
                      nav.popAndPushNamed(History.id);
                    }),
                DrawerItem(
                    image: Image.asset(Assets.figmaPngsEmail),
                    text: 'Top up',
                    onTap: () {
                      nav.popAndPushNamed(TopUpPage.id);
                    }),
                DrawerItem(
                    image: Image.asset(Assets.figmaPngsEmail),
                    text: 'Change password',
                    onTap: () {
                      nav.popAndPushNamed(ChangePasswordScreen.id);
                    }),
                DrawerItem(
                    image: Image.asset(Assets.figmaPngsEmail),
                    text: 'Change E-wallet pin',
                    onTap: () {}),
                DrawerItem(
                    image: Image.asset(Assets.figmaPngsEmail),
                    text: 'Google Maps',
                    onTap: () {
                      nav.popAndPushNamed(RideTrackingPage.id);
                    }),
                DrawerItem(
                    image: Image.asset(Assets.figmaPngsEmail),
                    text: 'No available shuttle',
                    onTap: () {
                      nav.popAndPushNamed(NoShuttleScreen.id);
                    }),
              ],
            ),
            addVerticalSpacing(50),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ReusableButton(
                  const Text(
                    'Sign Out',
                    style: boldWhiteStyle,
                  ),
                  () {},
                  blueColor),
            )
          ],
        ),
      ),
    );
  }
}
