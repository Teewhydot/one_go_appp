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
    return Stack(children: [
      Positioned(
        bottom: 350,
        left: 0,
        right: 0,
        child: Padding(
          padding: EdgeInsets.only(left: 20.0.r, right: 20.0.r),
          child: Container(
            height: deviceHeight / 11,
            width: 200.w,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
            ),
            child: const Center(
                child: Text(
              "Reaching in 30 minutes",
              style: boldWhiteStyle,
            )),
          ),
        ),
      ),
      Positioned(
        bottom: -50,
        right: 0,
        left: 0,
        child: Container(
          height: deviceHeight / 1.8,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.r),
              topRight: Radius.circular(30.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0.r),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r)),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(20.0.r),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("To pay", style: boldWhiteStyle),
                                Text("130", style: boldWhiteStyle),
                              ],
                            ),
                          ),
                        ),
                        const Expanded(child: BusInfoCard()),
                        addVerticalSpacing(5),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: deviceWidth * 0.1,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10.r),
                                  image: const DecorationImage(
                                    image:
                                        AssetImage(Assets.figmaPngsDriverPhoto),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Ben Peters",
                                      style: normalBlackStyle),
                                  Row(
                                    children: [
                                      const Text("4.7 stars",
                                          style: normalBlackStyle),
                                      addHorizontalSpacing(10),
                                      const Text("2000+ rides",
                                          style: normalBlackStyle),
                                    ],
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 30.r,
                                backgroundColor: Colors.white,
                                child: const Icon(
                                  Icons.call,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        addVerticalSpacing(10),
                        const Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                        Expanded(
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Check in",
                                style: boldWhiteStyle,
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
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
