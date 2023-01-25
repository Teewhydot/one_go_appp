import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';
import 'package:one_go_app/custom_widgets/user_interface_widgets/reusable_button.dart';
import 'package:one_go_app/generated/assets.dart';
import 'package:one_go_app/views/sign_in_page.dart';
import 'package:one_go_app/views/sign_up_page.dart';

class WelcomePage extends StatefulWidget {
  static const String id = 'WelcomePage';
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Image? image1,
      image2,
      image3,
      image4,
      image5,
      image6,
      image7,
      image8,
      image9,
      image10,
      image11,
      image12,
      image13,
      image14,
      image15,
      image16,
      image17,
      image18,
      image19,
      image20,
      image21,
      image22,
      image23,
      image24,
      image25,
      image26,
      image27,
      image28,
      image29,
      image30;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    image1 = Image.asset(
      Assets.figmaPngsArrowDown,
      gaplessPlayback: true,
    );
    image2 = Image.asset(
      Assets.figmaPngsBlueWallet,
      gaplessPlayback: true,
    );
    image3 = Image.asset(
      Assets.figmaPngsBusPhoto,
      gaplessPlayback: true,
    );
    image4 = Image.asset(
      Assets.figmaPngsChangePassword,
      gaplessPlayback: true,
    );
    image5 = Image.asset(
      Assets.figmaPngsCustomGraphic,
      gaplessPlayback: true,
    );
    image6 = Image.asset(
      Assets.figmaPngsDollarSign,
      gaplessPlayback: true,
    );
    image7 = Image.asset(
      Assets.figmaPngsDriverPhoto,
      gaplessPlayback: true,
    );
    image8 = Image.asset(
      Assets.figmaPngsEmail,
      gaplessPlayback: true,
    );
    image9 = Image.asset(
      Assets.figmaPngsForgotPassword,
      gaplessPlayback: true,
    );
    image10 = Image.asset(
      Assets.figmaPngsForgotPasswordOne,
      gaplessPlayback: true,
    );
    image11 = Image.asset(
      Assets.figmaPngsForgotPasswordTwo,
      gaplessPlayback: true,
    );
    image12 = Image.asset(
      Assets.figmaPngsGreyDollarSign,
      gaplessPlayback: true,
    );
    image13 = Image.asset(
      Assets.figmaPngsHistoryIcon,
      gaplessPlayback: true,
    );
    image14 = Image.asset(
      Assets.figmaPngsLargeGreenCheckmark,
      gaplessPlayback: true,
    );
    image15 = Image.asset(
      Assets.figmaPngsLargeMenuBar,
      gaplessPlayback: true,
    );
    image16 = Image.asset(
      Assets.figmaPngsNoAvailableBus,
      gaplessPlayback: true,
    );
    image17 = Image.asset(
      Assets.figmaPngsNavChange,
      gaplessPlayback: true,
    );
    image18 = Image.asset(
      Assets.figmaPngsOnegoImage,
      gaplessPlayback: true,
    );
    image19 = Image.asset(
      Assets.figmaPngsOtpVerification,
      gaplessPlayback: true,
    );
    image20 = Image.asset(
      Assets.figmaPngsPadlock,
      gaplessPlayback: true,
    );
    image21 = Image.asset(
      Assets.figmaPngsPickupImage,
      gaplessPlayback: true,
    );
    image22 = Image.asset(
      Assets.figmaPngsProfilePhoto,
      gaplessPlayback: true,
    );
    image23 = Image.asset(
      Assets.figmaPngsSignIn,
      gaplessPlayback: true,
    );
    image24 = Image.asset(
      Assets.figmaPngsTerminals,
      gaplessPlayback: true,
    );
    image25 = Image.asset(
      Assets.figmaPngsTopUp,
      gaplessPlayback: true,
    );
    image26 = Image.asset(
      Assets.figmaPngsTopUpNav,
      gaplessPlayback: true,
    );
    image27 = Image.asset(
      Assets.figmaPngsWallet,
      gaplessPlayback: true,
    );
    image28 = Image.asset(
      Assets.figmaPngsWalletPinPage,
      gaplessPlayback: true,
    );
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                  child: Center(
                child: Column(
                  children: [
                    Expanded(child: Image.asset(Assets.figmaPngsOnegoImage)),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ReusableButton(
                          const Text(
                            'Sign in',
                            style: boldWhiteStyle,
                          ), () {
                        Navigator.pushNamed(context, SignInPage.id);
                      }, blueColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ReusableButton(
                          const Text(
                            'Sign up',
                            style: normalBlueStyle,
                          ), () {
                        Navigator.pushNamed(context, SignUpPage.id);
                      }, whiteColor),
                    ),
                    addVerticalSpacing(50),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
