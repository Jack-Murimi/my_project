import 'package:flutter/material.dart';
import 'package:my_project/utils/constants/image_strings.dart';
import 'package:my_project/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(MyImageStrings.googleIcon),
          height: 50,
        ),
        SizedBox(width: MySizes.spaceBetweenItems),
        Image(
          image: AssetImage(MyImageStrings.facebookIcon),
          height: 50,
        ),
        SizedBox(width: MySizes.spaceBetweenItems),
        Image(
          image: AssetImage(MyImageStrings.twitterIcon),
          height: 50,
        ),
      ],
    );
  }
}
