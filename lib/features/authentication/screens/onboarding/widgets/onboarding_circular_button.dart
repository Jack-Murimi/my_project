import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_project/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:my_project/utils/constants/colors.dart';
import 'package:my_project/utils/constants/sizes.dart';
import 'package:my_project/utils/device/device_utility.dart';
import 'package:my_project/utils/helpers/helper_function.dart';

class OnBoardingCircularButton extends StatelessWidget {
  const OnBoardingCircularButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Positioned(
      right: MySizes.defaultSpace,
      bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? MyColors.primary : Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
