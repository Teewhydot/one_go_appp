
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),

      builder: (_) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OneGoApp(),
      ),
    );
  }
}

class OneGoApp extends StatelessWidget {
  const OneGoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // welcome screen with logo and sign in sign up button
    return const Scaffold(

      // welcome screen with logo and sign in sign up button


    );
  }
}