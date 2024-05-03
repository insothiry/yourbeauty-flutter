import 'package:flutter/material.dart';
import 'package:yourbeauty/utils/constants/sizes.dart';
import 'package:yourbeauty/utils/constants/text_strings.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/logos/yourbeauty-logo.png',
          height: 200.0,
          width: 200,
        ),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        Text(
          TTexts.loginSubtitile,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
