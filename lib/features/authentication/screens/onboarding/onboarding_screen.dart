import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:my_project/features/authentication/screens/onboarding/widgets/onboarding_circular_button.dart';
import 'package:my_project/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:my_project/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:my_project/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:my_project/utils/constants/image_strings.dart';
// My Import
import 'package:my_project/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: MyImageStrings.twitterIcon,
                title: MyTexts.onBoardingTitle1,
                subTitle: MyTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: MyImageStrings.facebookIcon,
                title: MyTexts.onBoardingTitle2,
                subTitle: MyTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: MyImageStrings.deliveryGif,
                title: MyTexts.onBoardingTitle3,
                subTitle: MyTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SkipPageIndicator
          const OnBoardingDotNavigation(),

          /// Next Page Button
          const OnBoardingCircularButton()
        ],
      ),
    );
  }
}
