// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/no_shuttle.dart';
import 'package:one_go_app/views/ride_tracking_page.dart';

class DrawerScreen extends StatelessWidget {
  static const String id = 'DrawerScreen';
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nav  = Navigator.of(context);
    return SafeArea(

      child: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Container(
                height: 200,
                color: Colors.white
            ),
            DrawerItem(image: Image.asset(Assets.figmaPngsEmail), text:'Name', onTap: (){}),
            DrawerItem(image: Image.asset(Assets.figmaPngsEmail), text:'Transactions', onTap: (){}),
            DrawerItem(image: Image.asset(Assets.figmaPngsEmail), text:'Top up', onTap: (){}),
            DrawerItem(image: Image.asset(Assets.figmaPngsEmail), text:'Email', onTap: (){}),
            DrawerItem(image: Image.asset(Assets.figmaPngsEmail), text:'Change Password', onTap: (){}),
            DrawerItem(image: Image.asset(Assets.figmaPngsEmail), text:'Change E-wallet pin', onTap: (){}),
            DrawerItem(image: Image.asset(Assets.figmaPngsEmail), text:'Google Maps', onTap: ()async{
              await Navigator.pushNamed(context, RideTrackingPage.id);
              nav.pop();
            }),
            DrawerItem(image: Image.asset(Assets.figmaPngsEmail), text:'No available shuttle', onTap: ()async{
            await  Navigator.pushNamed(context, NoShuttleScreen.id);
              nav.pop();
            }),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final Widget image;
  final String text;
  final onTap;

  const DrawerItem(
      {Key? key, required this.image, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 50,
          width: 400,
          color: whiteColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  image,
                  addHorizontalSpacing(10),
                  Text(
                    text,
                    style: boldBlueStyle,
                  ),
                ],
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
