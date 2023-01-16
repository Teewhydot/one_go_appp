import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';

class QueueSuccessfull extends StatelessWidget {
  static const String id = 'Queue Successfull';
  const QueueSuccessfull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Image.asset(
                  Assets.figmaPngsLargeGreenCheckmark,
                  height: 110,
                  width: 110,
                )),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 5),
                  child: Text(
                    'You have successfully joined',
                    style: boldBlueStyle.copyWith(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'the queue',
                    style: boldBlueStyle.copyWith(fontSize: 18.sp),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Your queue number',
                    style: boldBlueStyle.copyWith(fontSize: 18.sp),
                  ),
                ),
                const TimerContainer(
                  value: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Estimated pickup time',
                    style: boldBlueStyle.copyWith(fontSize: 18.sp),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TimerContainer(value: 00),
                    addHorizontalSpacing(10),
                    const TimerContainer(value: 12),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ReusableButton(
                  Text(
                    'Leave Queue',
                    style: boldWhiteStyle.copyWith(fontSize: 18.sp),
                  ),
                  () {},
                  blueColor),
            ),
          ),
        ],
      ),
    );
  }
}

class TimerContainer extends StatelessWidget {
  final int value;

  const TimerContainer({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      width: 46,
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        value.toString(),
        style: boldBlackStyle,
      )),
    );
  }
}
