import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yourbeauty/features/authentication/controllers_onBoarding/onboarding_controller.dart';
import 'package:yourbeauty/utils/constants/colors.dart';
import 'package:yourbeauty/utils/constants/sizes.dart';
import 'package:yourbeauty/utils/device/device_utility.dart';
import 'package:yourbeauty/utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({Key? key});

  @override
  Widget build(BuildContext context) {
    final controller = onBoardingController.instance;
    final dark = THelperFucntions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.light : TColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
