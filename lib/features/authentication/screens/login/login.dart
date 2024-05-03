import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yourbeauty/common/styles/spacing_styles.dart';
import 'package:yourbeauty/common/widgets/login_signup/form_divider.dart';
import 'package:yourbeauty/common/widgets/login_signup/social_buttons.dart';
import 'package:yourbeauty/features/authentication/screens/login/widgets/login_form.dart';
import 'package:yourbeauty/features/authentication/screens/login/widgets/login_header.dart';
import 'package:yourbeauty/utils/constants/sizes.dart';
import 'package:yourbeauty/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title, Subtitle
              const TLoginHeader(),

              // Form
              const TLoginForm(),

              // Divder
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: TSizes.defaultSpace,
              ),

              // Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
