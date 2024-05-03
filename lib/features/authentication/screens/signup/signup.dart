import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yourbeauty/common/widgets/login_signup/form_divider.dart';
import 'package:yourbeauty/common/widgets/login_signup/social_buttons.dart';
import 'package:yourbeauty/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:yourbeauty/utils/constants/sizes.dart';
import 'package:yourbeauty/utils/constants/text_strings.dart';
import 'package:yourbeauty/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              // Form
              const TSignupForm(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              // Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              // Socail Button
              const TSocialButtons(),
              const SizedBox(
                height: TSizes.defaultSpace,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
