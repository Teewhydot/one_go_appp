import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/views/home.dart';
import 'package:one_go_app/views/no_shuttle.dart';
import 'package:one_go_app/views/sign_in_page.dart';
import 'package:one_go_app/views/sign_up_page.dart';
import 'package:one_go_app/views/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(414, 896),
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: NoShuttleScreen.id,
        routes: {
          WelcomePage.id: (context) => const WelcomePage(),
          SignInPage.id: (context) => const SignInPage(),
          SignUpPage.id: (context) => const SignUpPage(),
          Home.id: (context) => const Home(),
          NoShuttleScreen.id: (context) => const NoShuttleScreen(),

        },
      ),
    );
  }
}