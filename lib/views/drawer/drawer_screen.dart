import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/generated/assets.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerItem(image: Image.asset(Assets.figmaPngsEmail), text:'Name', onTap: (){}),
          ],
        ),
      );
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
      child: Container(
        height: 50,
        width: 400,
        color: blueColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            image,
            Text(
              text,
              style: normalBlackStyle,
            ),
          ],
        ),
      ),
    );
  }
}
