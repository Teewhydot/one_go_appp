import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/custom_bottom_sheet.dart';
import 'package:one_go_app/views/account_management/change_ewallet_pin_screen.dart';
import 'package:one_go_app/views/account_management/change_password_screen.dart';
import 'package:one_go_app/views/account_management/forgot_password_step_two.dart';
import 'package:one_go_app/views/account_management/forgot_pin_page.dart';
import 'package:one_go_app/views/account_management/forgot_pin_page_step_two.dart';
import 'package:one_go_app/views/history.dart';
import 'package:one_go_app/views/home.dart';
import 'package:one_go_app/views/mail_verification_screen.dart';
import 'package:one_go_app/views/no_shuttle.dart';
import 'package:one_go_app/views/phone_verification_screen.dart';
import 'package:one_go_app/views/queue_successful.dart';
import 'package:one_go_app/views/ride_tracking_page.dart';
import 'package:one_go_app/views/seat_booked_success.dart';
import 'package:one_go_app/views/set_wallet_pin_page.dart';
import 'package:one_go_app/views/sign_in_page.dart';
import 'package:one_go_app/views/sign_up_page.dart';
import 'package:one_go_app/views/terminals_page.dart';
import 'package:one_go_app/views/top_up_page.dart';
import 'package:one_go_app/views/welcome_page.dart';

import 'views/account_management/forgot_password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(375, 812),
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Home.id,
        routes: {
          WelcomePage.id: (context) => const WelcomePage(),
          SignInPage.id: (context) => const SignInPage(),
          SignUpPage.id: (context) => const SignUpPage(),
          Home.id: (context) => const Home(),
          NoShuttleScreen.id: (context) => const NoShuttleScreen(),
          Terminals.id: (context) => const Terminals(),
          SeatBookedSuccess.id: (context) => const SeatBookedSuccess(),
          RideTrackingPage.id: (context) => const RideTrackingPage(),
          GoogleMapsBottomSheet.id: (context) => const GoogleMapsBottomSheet(),
          ChangePasswordScreen.id: (context) => const ChangePasswordScreen(),
          ForgotPasswordStepTwo.id: (context) => const ForgotPasswordStepTwo(),
          ForgotPasswordPage.id: (context) => const ForgotPasswordPage(),
          PhoneVerificationScreen.id: (context) =>
              const PhoneVerificationScreen(),
          TopUpPage.id: (context) => const TopUpPage(),
          ChangeE_WalletPinPage.id: (context) => const ChangeE_WalletPinPage(),
          History.id: (context) => const History(),
          QueueSuccessfull.id: (context) => const QueueSuccessfull(),
          SetWalletPin.id: (context) => const SetWalletPin(),
          ForgotPinPage.id: (context) => const ForgotPinPage(),
          ForgotEwalletPinStepTwo.id: (context) =>
              const ForgotEwalletPinStepTwo(),
          MailVerificationScreen.id: (context) =>
              const MailVerificationScreen(),
        },
      ),
    );
  }
}
