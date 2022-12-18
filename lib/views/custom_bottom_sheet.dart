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
    return Stack(children: [
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
            child: const Center(
                child: Text(
                  "Reaching in 30 minutes",
                  style: boldWhiteStyle,
                )),
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
            color: Colors.white,
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
                      children: const [
                        Text("To pay", style: boldWhiteStyle),
                        Text("130", style: boldWhiteStyle),
                      ],
                    ),
                  ),
                  const BusInfoCard(),
                  addVerticalSpacing(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage(Assets.figmaPngsDriverPhoto),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Ben Peters", style: boldWhiteStyle),
                          Row(
                            children: [
                              const Text("4.7 stars", style: boldWhiteStyle),
                              addHorizontalSpacing(10),
                              const Text("2000+ rides",
                                  style: boldWhiteStyle),
                            ],
                          ),
                        ],
                      ),
                      const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.call,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  addVerticalSpacing(10),
                  const Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  TextButton(onPressed: (){}, child: const Text("Check in",style: boldWhiteStyle,)),
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
            padding: const EdgeInsets.all(3.0),
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
            height: 73,
            width: 150,
          ),
        ],
      ),
    );
  }
}
