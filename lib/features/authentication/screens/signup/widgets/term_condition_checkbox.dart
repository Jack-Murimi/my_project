import 'package:flutter/material.dart';
import 'package:my_project/utils/helpers/helper_function.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MyTermsAndConditionCheckbox extends StatelessWidget {
  const MyTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: MySizes.spaceBetweenItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${MyTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: MyTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? Colors.white : Colors.blue,
                    decoration: TextDecoration.underline),
              ),
              TextSpan(
                  text: ' ${MyTexts.add} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: MyTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? Colors.white : Colors.blue,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
