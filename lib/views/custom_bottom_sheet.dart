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
    return Scaffold(
      body: Stack(children: [
        Positioned(
          bottom: 350,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.only(left: 20.0.r, right: 20.0.r),
            child: Container(
              height: deviceHeight / 11,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: const Center(child: Text("Reaching in 30 minutes",style: boldWhiteStyle,)),
            ),
          ),
        ),
        Positioned(
          bottom: -130,
          right: 0,
          left: 0,
          child: Container(
            height: deviceHeight / 2,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("To pay", style: boldWhiteStyle),
                          const Text("130", style: boldWhiteStyle),
                        ],
                      ),
                    ),
                    const BusInfoCard()
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
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
            padding: const EdgeInsets.all(3.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("MG ZS EV", style: boldBlueStyle),
                Text("DL09 EV8987", style: normalBlackStyle.copyWith(fontSize: 22.sp)),
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
          Image.asset(Assets.figmaPngsBusPhoto, height: 73,width: 150,),
        ],
      )
      ,
    );
  }
}
