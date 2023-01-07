import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget addVerticalSpacing(double height) {
  return SizedBox(height: height.h);
}

Widget addHorizontalSpacing(double width) {
  return SizedBox(width: width.w);
}

const successLoginSnackBar = SnackBar(
  backgroundColor: Colors.green,
  duration: Duration(milliseconds: 850),
  content: Text('You have logged in Successfully!'),
);

const noNetworkSnackBar = SnackBar(
  backgroundColor: Colors.black,
  duration: Duration(milliseconds: 850),
  content: Text('Check your Internet Connection'),
);

const fetchDetailsError = SnackBar(
  backgroundColor: Colors.black,
  duration: Duration(milliseconds: 850),
  content: Text('Could\'nt fetch User details'),
);

const successRegisterSnackBar = SnackBar(
  backgroundColor: Colors.green,
  duration: Duration(milliseconds: 850),
  content: Text('You have Registered Successfully!'),
);

const somethingWrongSnackBar = SnackBar(
  backgroundColor: Colors.black,
  duration: Duration(seconds: 2),
  content:
      Text('Something went wrong on our end, We are working on it please.'),
);

const tourAlreadyExistsSnackBar = SnackBar(
  backgroundColor: Colors.black,
  duration: Duration(milliseconds: 850),
  content: Text('This tour is already in your BucketList!'),
);

const tourAddedSnackBar = SnackBar(
  backgroundColor: Colors.green,
  duration: Duration(milliseconds: 850),
  content: Text('Tour Added'),
);

const tourRemovedSnackBar = SnackBar(
  duration: Duration(milliseconds: 850),
  backgroundColor: Colors.green,
  content: Text('Tour Removed'),
);

const accessDenied = SnackBar(
  backgroundColor: Colors.black,
  content: Text('Access not granted'),
);
const apiKey = 'AIzaSyB-_02SWJ-jaQrdeHrVha7x_AmK-mHs_Uw';
const linkStyle = TextStyle(color: Colors.blue);
const defaultStyle = TextStyle(color: Colors.grey, fontSize: 15.0);
const boldWhiteStyle =
    TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold);
const boldBlackStyle =
    TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold);
const boldBlueStyle = TextStyle(
    color: Color(0xff2b47fc), fontSize: 25.0, fontWeight: FontWeight.bold);
const normalBlueStyle = TextStyle(
    color: Color(0xff2b47fc), fontSize: 25.0, fontWeight: FontWeight.normal);
const normalBlackStyle =
    TextStyle(color: textColor, fontSize: 15.0, fontWeight: FontWeight.normal);

const normalWhiteStyle =
    TextStyle(color: whiteColor, fontSize: 18, fontWeight: FontWeight.normal);
const busNumberTextColor = Color(0xff314fa3);
const blueColor = Color(0xFF162063);
const greyColor = Color(0xFFA9A9A9);
const blueTextColor = Color(0xFF2743fb);
const textColor = Color(0xFF3a3a3a);
const whiteColor = Color(0xFFFFFFFF);
const textFieldFillColor = Color(0xFFdadada);
const datePickerContainerColor = Color(0xFF5264f9);
const borderRadius30 = BorderRadius.only(
  topLeft: Radius.circular(30),
  topRight: Radius.circular(30),
);
const borderRadius20 = BorderRadius.only(
  topLeft: Radius.circular(20),
  topRight: Radius.circular(20),
);
const borderRadius30All = BorderRadius.all(Radius.circular(30));
const borderRadius20All = BorderRadius.all(Radius.circular(20));
