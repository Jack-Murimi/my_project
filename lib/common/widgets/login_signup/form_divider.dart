import 'package:flutter/material.dart';
import 'package:my_project/utils/helpers/helper_function.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: dark ? Colors.grey : Colors.black,
                thickness: 0.5,
                indent: 60,
                endIndent: 5)),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
            child: Divider(
                color: dark ? Colors.grey : Colors.black87,
                thickness: 0.5,
                indent: 5,
                endIndent: 60)),
      ],
    );
  }
}
