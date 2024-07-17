import 'package:flutter/material.dart';
import 'package:my_project/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:my_project/utils/constants/sizes.dart';
import 'package:my_project/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MyDeviceUtils.getAppbarHeight(),
      right: MySizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
