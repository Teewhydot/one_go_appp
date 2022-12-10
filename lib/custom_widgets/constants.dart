import 'package:flutter/material.dart';

const kBoldTextStyleBlack = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
  color: Colors.black,
);
const kMediumTextStyleBlack = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 20,
  color: Colors.black,
);
const kBlackText = TextStyle(
  color: Colors.black,
  fontSize: 20.0,
  fontWeight: FontWeight.normal,
);

const kBoldTextStyleWhite = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 15,
  color: Colors.white,
);

Widget addVerticalSpacing(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalSpacing(double width) {
  return SizedBox(width: width);
}

const fetchVideoError = SnackBar(
  backgroundColor: Colors.black,
  duration: Duration(milliseconds: 850),
  content: Text('Could\'nt Load Video'),
);

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