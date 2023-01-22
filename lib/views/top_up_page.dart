import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/top_up_step_two.dart';

enum Platform { paystack, flutterwave }

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
            Positioned(
              top: 70.h,
              left: 20.w,
              child: const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(Assets.figmaPngsProfilePhoto),
              ),
            ),
            Positioned(
                top: 90.h,
                right: 20.w,
                child: Image.asset(
                  Assets.figmaPngsBlueWallet,
                  height: 160.h,
                  width: 160.w,
                )),
            Positioned(
                top: 250.h,
                left: 20.w,
                child: Text(
                  'Top Up',
                  style: boldBlueStyle.copyWith(fontSize: 32.sp),
                )),
            Positioned(
                top: 300.h,
                left: 20.w,
                child: Text(
                  'Payment gateway',
                  style: boldBlueStyle.copyWith(fontSize: 27.sp),
                )),
            // grey
            Positioned(
                top: 350.h,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TopUpStepTwo(
                                    selectedPlatform: Platform.paystack,
                                  )));
                    },
                    child: Container(
                      height: 70.h,
                      width: 150.w,
                      decoration: const BoxDecoration(
                          color: greyColor, borderRadius: borderRadius30All),
                      child: const Center(
                        child: Text(
                          'Paystack',
                          style: boldBlackStyle,
                        ),
                      ),
                    ),
                  ),
                )),
            Positioned(
                top: 450.h,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TopUpStepTwo(
                                    selectedPlatform: Platform.flutterwave,
                                  )));
                    },
                    child: Container(
                      height: 70.h,
                      width: 150.w,
                      decoration: const BoxDecoration(
                          color: greyColor, borderRadius: borderRadius30All),
                      child: const Center(
                        child: Text(
                          'Flutterwave',
                          style: boldBlackStyle,
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
