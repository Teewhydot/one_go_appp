import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/generated/assets.dart';

class TopUpPage extends StatelessWidget {
  static const String id = 'Top up page';
  const TopUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            const Positioned(
              top: 70,
              left: 20,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(Assets.figmaPngsProfilePhoto),
              ),
            ),
            Positioned(
                top: 90,
                right: 20,
                child: Image.asset(
                  Assets.figmaPngsBlueWallet,
                  height: 160,
                  width: 160,
                )),
            Positioned(
                top: 250,
                left: 20,
                child: Text(
                  'Top Up',
                  style: boldBlueStyle.copyWith(fontSize: 32.sp),
                ))
          ],
        ),
      ),
    );
  }
}
