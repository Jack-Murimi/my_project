import 'package:flutter/material.dart';
import 'package:my_project/utils/constants/sizes.dart';
import 'package:my_project/utils/helpers/helper_function.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(MySizes.defaultSpace),
      child: Column(
        children: [
          Container(
            width: MyHelperFunction.screenWidth() * 0.8,
            height: MyHelperFunction.screenHeight() * 0.6,
            color: dark ? Colors.black : Colors.white,
            child: Image(
              width: MyHelperFunction.screenWidth() * 0.8,
              height: MyHelperFunction.screenHeight() * 0.6,
              image: AssetImage(image),
            ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: MySizes.spaceBetweenItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
