// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';

class ReusableTourCard extends StatelessWidget {
  final image;
  final String nameOfEvent;
  final dateOfEvent;
  final onTap;

  const ReusableTourCard(
      this.image, this.nameOfEvent, this.dateOfEvent, this.onTap,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0.r),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 100.h,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.r))),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.r),
                      topLeft: Radius.circular(10.r)),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: 100.w,
                    height: 100.h,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0.r),
                    child: Text(
                      nameOfEvent,
                      style: TextStyle(
                        fontSize: 17.sp,
                      ),
                    ),
                  ),
                  addVerticalSpacing(10),
                  Padding(
                    padding: EdgeInsets.all(8.0.r),
                    child: Text(dateOfEvent),
                  ),
                ],
              ),
              addVerticalSpacing(20),
            ],
          ),
        ),
      ),
    );
  }
}
