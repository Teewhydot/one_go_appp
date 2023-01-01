import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/generated/assets.dart';

class GoogleMapsBottomSheet extends StatefulWidget {
  static const String id = 'GoogleMapsBottomSheet';
  const GoogleMapsBottomSheet({Key? key}) : super(key: key);

  @override
  State<GoogleMapsBottomSheet> createState() => _GoogleMapsBottomSheetState();
}

class _GoogleMapsBottomSheetState extends State<GoogleMapsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final totalBottomSheetHeight = deviceHeight / 1.8;
    return Stack(children: [
      //green container
      Positioned(
        bottom: -50,
        left: 0,
        right: 0,
        child: Padding(
          padding: EdgeInsets.only(left: 20.0.r, right: 20.0.r),
          child: Container(
            height: totalBottomSheetHeight + 50,
            width: 200.w,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: borderRadius30,
            ),
            child: const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Reaching in 30 minutes",
                  style: normalWhiteStyle,
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
                color: Colors.blue,
                borderRadius: borderRadius30,
              ),
              child: SizedBox(
                height: totalBottomSheetHeight * 0.8,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("To pay", style: boldWhiteStyle),
                          Text("130", style: boldWhiteStyle),
                        ],
                      ),
                    ),
                    const BusInfoCard(),
                    addVerticalSpacing(5),
                    DriverInfoCard(deviceWidth: deviceWidth),
                    addVerticalSpacing(5),
                    const Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ],
                ),
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
                const Text("Ben Peters", style: normalBlackStyle),
                Row(
                  children: [
                    const Text("4.7 stars", style: normalBlackStyle),
                    addHorizontalSpacing(10),
                    const Text("2000+ rides", style: normalBlackStyle),
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
                const Text("MG ZS EV", style: boldBlueStyle),
                Text("DL09 EV8987",
                    style: normalBlackStyle.copyWith(fontSize: 22.sp)),
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
                      style: boldWhiteStyle,
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
