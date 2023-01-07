import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/top_up_page.dart';

class TopUpStepTwo extends StatefulWidget {
  static const String id = 'Top up step two';
  final Platform selectedPlatform;

  const TopUpStepTwo({Key? key, required this.selectedPlatform})
      : super(key: key);

  @override
  State<TopUpStepTwo> createState() => _TopUpStepTwoState();
}

class _TopUpStepTwoState extends State<TopUpStepTwo> {
  final TextEditingController _phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  'Enter amount',
                  style: boldBlueStyle.copyWith(fontSize: 27.sp),
                )),
            Positioned(
              top: 350.h,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: TextFormField(
                  controller: _phoneNumberController,
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  style: boldBlackStyle,
                  decoration: const InputDecoration(
                    hintText: '0:00',
                    hintStyle: boldBlackStyle,
                  ),

                  // decoration: InputDecoration(
                  //   filled: true,
                  //   fillColor: textFieldFillColor,
                  //   focusColor: Colors.white,
                  //   focusedBorder: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(25.r),
                  //   ),
                  //   border: OutlineInputBorder(
                  //     borderSide:
                  //         const BorderSide(width: 0, style: BorderStyle.none),
                  //     borderRadius: BorderRadius.circular(25.r),
                  //   ),
                  //   hintText: '0:00',
                  //   contentPadding: EdgeInsets.symmetric(
                  //       vertical: 10.0.h, horizontal: 20.0.w),
                  // ),
                ),
              ),
            ),
            // paystack or flutter wave
            widget.selectedPlatform == Platform.paystack
                ? Positioned(
                    top: 500.h,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
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
                    ))
                : Positioned(
                    top: 500.h,
                    left: 0.w,
                    right: 0.w,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      child: Container(
                        height: 70.h,
                        width: 150.w,
                        decoration: const BoxDecoration(
                            color: greyColor, borderRadius: borderRadius30All),
                        child: const Center(
                          child: Text(
                            'Flutter wave',
                            style: boldBlackStyle,
                          ),
                        ),
                      ),
                    )),
            Positioned(
              bottom: 50.h,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
