import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';

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
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
        child: Container(
          height: 40.h,
          width: 400.w,
          decoration: BoxDecoration(
              color: greyColor, borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  addHorizontalSpacing(10),
                  Text(
                    text,
                    style: normalBlueStyle,
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
