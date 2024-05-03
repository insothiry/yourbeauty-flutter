import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yourbeauty/features/authentication/controllers_onBoarding/onboarding_controller.dart';
import 'package:yourbeauty/features/authentication/screens/onBoarding/widgets/onboarding_page.dart';
import 'package:yourbeauty/features/authentication/screens/onBoarding/widgets/onboarding_skip.dart';
import 'package:yourbeauty/features/authentication/screens/onBoarding/widgets/onboarding_dot_navigation.dart';
import 'package:yourbeauty/utils/constants/image_strings.dart';
import 'package:yourbeauty/utils/constants/text_strings.dart';

import 'widgets/onboarding_next_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(onBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubtitle1,
              ),
              onBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubtitle2,
              ),
              onBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubtitle3,
              )
            ],
          ),

          // Skip button
          const onBoardingSkip(),

          // Dot navigation smoothPageIndicator
          const OnBoardingDotNavigation(),

          // Circular Button
          const onBoardingNextButton()
        ],
      ),
    );
  }
}
