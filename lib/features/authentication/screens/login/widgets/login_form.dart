import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yourbeauty/features/authentication/screens/signup/signup.dart';
import 'package:yourbeauty/utils/constants/colors.dart';
import 'package:yourbeauty/utils/constants/sizes.dart';
import 'package:yourbeauty/utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          // Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: TColors
                        .primaryColor), // Change underline color when focused
              ),
            ),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),

          // Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: TColors
                        .primaryColor), // Change underline color when focused
              ),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields / 2),

          // Remember me & Forget password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Remeber me
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    activeColor: TColors.primaryColor,
                  ),
                  const Text(TTexts.remeberMe),
                ],
              ),

              // Forget password
              TextButton(
                onPressed: () {},
                child: const Text(
                  TTexts.forgetPassword,
                  style: TextStyle(
                    color: TColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          // Sign In Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.primaryColor),
                  child: const Text(
                    TTexts.signin,
                    style: TextStyle(
                      color: Colors.white, // Change this to white
                    ),
                  ))),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          // Create Account Button
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignupScreen()),
                  child: const Text(TTexts.creatAccount))),
        ],
      ),
    ));
  }
}
