import 'package:flutter/material.dart';

Widget addVerticalSpacing(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalSpacing(double width) {
  return SizedBox(width: width);
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

const linkStyle = TextStyle(color: Colors.blue);
const defaultStyle = TextStyle(color: Colors.grey, fontSize: 15.0);
const boldWhiteStyle = TextStyle(color: Colors.white,fontSize: 25.0, fontWeight: FontWeight.bold);
const boldBlackStyle = TextStyle(color: Colors.black,fontSize: 25.0, fontWeight: FontWeight.bold);
const boldBlueStyle = TextStyle(color: Colors.blue,fontSize: 25.0, fontWeight: FontWeight.bold);
const normalBlueStyle = TextStyle(color: Colors.blue,fontSize: 25.0, fontWeight: FontWeight.normal);
const blueColor = Color(0xFF4960F9);
const greyColor = Color(0xFFA9A9A9);
const blueTextColor = Color(0xFF2743fb);
const textColor = Color(0xFF3a3a3a);
const whiteColor = Color(0xFFFFFFFF);
const textFieldFillColor = Color(0xFFdadada);