import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yourbeauty/features/authentication/controllers_onBoarding/onboarding_controller.dart';
import 'package:yourbeauty/utils/constants/colors.dart';
import 'package:yourbeauty/utils/constants/sizes.dart';
import 'package:yourbeauty/utils/device/device_utility.dart';
import 'package:yourbeauty/utils/helpers/helper_functions.dart';

class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          // Print statement when the button is clicked
          print('Next button clicked');
          // Call the nextPage method from the controller
          onBoardingController.instance.nextPage();
          print(Get.currentRoute);
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.primaryColor : Colors.black,
        ),
        child: const Icon(
          Iconsax.arrow_right_4,
          color: Colors.white, // Set the icon color to white
        ),
      ),
    );
  }
}
