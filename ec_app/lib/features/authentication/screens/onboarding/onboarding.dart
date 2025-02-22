import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ec_app/utils/constants/image_strings.dart';
import 'package:ec_app/utils/constants/text_strings.dart';
import 'package:ec_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ec_app/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:ec_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ec_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import '../../controllers/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingSubTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingSubTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingSubTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}


