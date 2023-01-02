import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/custom_widgets/reusable_button.dart';
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
                )),
            Positioned(
                top: 300,
                left: 20,
                child: Text(
                  'Payment gateway',
                  style: boldBlueStyle.copyWith(fontSize: 27.sp),
                )),
            // grey
            Positioned(
                top: 350,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  child: Container(
                    height: 70,
                    width: 150,
                    decoration: const BoxDecoration(
                        color: greyColor, borderRadius: borderRadius30All),
                    child: const Center(
                      child: Text(
                        'Paystack',
                        style: boldBlackStyle,
                      ),
                    ),
                  ),
                )),
            Positioned(
                top: 450,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  child: Container(
                    height: 70,
                    width: 150,
                    decoration: const BoxDecoration(
                        color: greyColor, borderRadius: borderRadius30All),
                    child: const Center(
                      child: Text(
                        'Flutterwave',
                        style: boldBlackStyle,
                      ),
                    ),
                  ),
                )),
            Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ReusableButton(
                      const Text(
                        'Proceed',
                        style: boldWhiteStyle,
                      ),
                      () {},
                      blueColor),
                ))
          ],
        ),
      ),
    );
  }
}
