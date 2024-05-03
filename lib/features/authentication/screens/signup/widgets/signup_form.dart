import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yourbeauty/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:yourbeauty/features/authentication/screens/signup/widgets/verifiy_email.dart';
import 'package:yourbeauty/utils/constants/colors.dart';
import 'package:yourbeauty/utils/constants/sizes.dart';
import 'package:yourbeauty/utils/constants/text_strings.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // First name & Last name
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.firstname,
                    prefixIcon: Icon(Iconsax.user)),
              )),
              const SizedBox(
                width: TSizes.spaceBetweenInputFields,
              ),
              Expanded(
                  child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.lastname, prefixIcon: Icon(Iconsax.user)),
              )),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBetweenInputFields,
          ),
          // Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),

          // Email
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),

          // Phone number
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.phoneNumber, prefixIcon: Icon(Iconsax.call)),
          ),

          // Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          // Terms & Conditions Checkbox
          const TTermsAndConditionCheckbox(),

          const SizedBox(
            height: TSizes.defaultSpace,
          ),

          // Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => VerifyEmailScreen()),
              style: ElevatedButton.styleFrom(
                backgroundColor: TColors.primaryColor,
              ),
              child: const Text(
                TTexts.creatAccount,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
