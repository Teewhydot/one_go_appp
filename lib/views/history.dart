import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/custom_widgets/history_widget.dart';

class History extends StatelessWidget {
  static const String id = 'History';
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    color: Colors.blue,
                    child: Stack(
                      children: [
                        Positioned(
                            top: 50,
                            left: 10,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )),
                        Positioned(
                            top: 50,
                            right: 10,
                            child: Container(
                              height: 30.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                  color:
                                      datePickerContainerColor.withOpacity(0.2),
                                  borderRadius: borderRadius30All),
                              child: Align(
                                alignment: Alignment.center,
                                child: DateTimePicker(
                                  initialValue: '',
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2100),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '   Select Date',
                                    hintStyle: normalWhiteStyle,
                                  ),
                                  dateLabelText: '  Select Date',
                                  onChanged: (val) => print(val),
                                  onSaved: (val) => print(val),
                                ),
                              ),
                            )),
                        // centered text
                        const Positioned(
                          top: 50,
                          left: 90,
                          child: Text(
                            'History',
                            style: boldWhiteStyle,
                          ),
                        ),
                        //positioned listview
                        Positioned(
                          top: 100,
                          left: 10,
                          right: 10,
                          child: SizedBox(
                            height: 500.h,
                            child: ListView.builder(
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text('Item $index'),
                                  );
                                }),
                          ),
                        ),
                      ],
                    )),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.white,
                  child: ListView(
                    children: const [
                      HistoryWidget(
                        currentLocation: 'Current Location',
                        destination: 'Destination',
                        price: '600',
                      ),
                      HistoryWidget(
                        currentLocation: 'Current Location',
                        destination: 'Destination',
                        price: '600',
                      ),
                      HistoryWidget(
                        currentLocation: 'Current Location',
                        destination: 'Destination',
                        price: '600',
                      ),
                      HistoryWidget(
                        currentLocation: 'Current Location',
                        destination: 'Destination',
                        price: '600',
                      ),
                      HistoryWidget(
                        currentLocation: 'Current Location',
                        destination: 'Destination',
                        price: '600',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
