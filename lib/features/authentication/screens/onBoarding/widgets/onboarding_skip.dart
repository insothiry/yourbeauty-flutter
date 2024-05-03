import 'package:flutter/material.dart';
import 'package:yourbeauty/features/authentication/controllers_onBoarding/onboarding_controller.dart';
import 'package:yourbeauty/utils/constants/sizes.dart';
import 'package:yourbeauty/utils/device/device_utility.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () => onBoardingController.instance.skipPage(),
          child: const Text('Skip'),
        ));
  }
}
