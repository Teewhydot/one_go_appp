import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/generated/assets.dart';

class HistoryWidget extends StatelessWidget {
  final String currentLocation;
  final String destination;
  final String price;

  const HistoryWidget({
    Key? key,
    required this.currentLocation,
    required this.destination,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
          height: 200.h,
          width: deviceWidth,
          decoration: BoxDecoration(
              color: greyColor, borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      Assets.figmaPngsHistoryIcon,
                      height: 100.h,
                    ),
                    addHorizontalSpacing(20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          currentLocation,
                          style: normalBlackStyle.copyWith(fontSize: 20.sp),
                        ),
                        addVerticalSpacing(40),
                        Text(
                          destination,
                          style: normalBlackStyle.copyWith(fontSize: 20.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              addVerticalSpacing(5),
              const Divider(
                color: whiteColor,
                thickness: 2,
              ),
              addVerticalSpacing(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  addHorizontalSpacing(10),
                  Image.asset(
                    Assets.figmaPngsGreyDollarSign,
                    height: 31,
                    width: 31,
                  ),
                  addHorizontalSpacing(10),
                  Text(
                    price,
                    style: normalBlackStyle.copyWith(fontSize: 20.sp),
                  ),
                  addHorizontalSpacing(20),
                ],
              )
            ],
          )),
    );
  }
}
