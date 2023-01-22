import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/home.dart';

class GoogleMapsBottomSheet extends StatefulWidget {
  static const String id = 'GoogleMapsBottomSheet';
  const GoogleMapsBottomSheet({Key? key}) : super(key: key);

  @override
  State<GoogleMapsBottomSheet> createState() => _GoogleMapsBottomSheetState();
}

class _GoogleMapsBottomSheetState extends State<GoogleMapsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context);
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final totalBottomSheetHeight = deviceHeight / 2.5;
    return Stack(children: [
      Positioned(
        bottom: -50,
        left: 0,
        right: 0,
        child: Padding(
          padding: EdgeInsets.only(left: 20.0.r, right: 20.0.r),
          child: Container(
            height: totalBottomSheetHeight + 50.h,
            width: 200.w,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: borderRadius30,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.bolt,
                      color: whiteColor,
                    ),
                    Text(
                      " Reaching in 30 minutes",
                      style: normalWhiteStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      //white container
      Positioned(
        bottom: -50,
        right: 0,
        left: 0,
        child: Container(
          height: totalBottomSheetHeight,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: borderRadius30,
          ),
          // blue container
          child: Padding(
            padding: EdgeInsets.all(10.0.r),
            child: Container(
              decoration: const BoxDecoration(
                color: blueColor,
                borderRadius: borderRadius30,
              ),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          addHorizontalSpacing(5),
                          const Text("To pay", style: normalWhiteStyle),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("130", style: boldWhiteStyle),
                          addHorizontalSpacing(5),
                        ],
                      ),
                    ],
                  ),
                  addVerticalSpacing(5),
                  const BusInfoCard(),
                  addVerticalSpacing(10),
                  DriverInfoCard(deviceWidth: deviceWidth),
                  const Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  TextButton(
                      onPressed: () {
                        nav.pushReplacementNamed(Home.id);
                      },
                      child: const Text(
                        'Check in',
                        style: boldWhiteStyle,
                      )),
                  addVerticalSpacing(50),
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

class DriverInfoCard extends StatelessWidget {
  const DriverInfoCard({
    super.key,
    required this.deviceWidth,
  });

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: deviceWidth * 0.12,
              height: 48.h,
              decoration: BoxDecoration(
                color: whiteColor,
                border: Border.all(color: whiteColor),
                borderRadius: BorderRadius.circular(10.r),
                image: const DecorationImage(
                  image: AssetImage(Assets.figmaPngsDriverPhoto),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            addHorizontalSpacing(10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Ben Peters", style: normalWhiteStyle),
                Row(
                  children: [
                    const Text("4.7 stars", style: normalWhiteStyle),
                    addHorizontalSpacing(10),
                    const Text("2000+ rides", style: normalWhiteStyle),
                  ],
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.call,
                color: Colors.black,
              ),
            ),
            addHorizontalSpacing(10),
          ],
        ),
      ],
    );
  }
}

class BusInfoCard extends StatelessWidget {
  const BusInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(3.0.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("MG ZS EV",
                    style: boldBlueStyle.copyWith(fontSize: 12.sp)),
                Text("DL09 EV8987",
                    style: normalBlackStyle.copyWith(
                        fontSize: 22.sp, color: busNumberTextColor)),
                Container(
                  height: 25.h,
                  width: 170.w,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: const Center(
                    child: Text(
                      "208kg CO Saved",
                      style: normalWhiteStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            Assets.figmaPngsBusPhoto,
            height: 73.h,
            width: 150.w,
          ),
        ],
      ),
    );
  }
}
