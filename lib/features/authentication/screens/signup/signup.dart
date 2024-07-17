import 'package:flutter/material.dart';
import 'package:my_project/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:my_project/utils/constants/sizes.dart';
import 'package:my_project/utils/constants/text_strings.dart';
import 'package:my_project/utils/helpers/helper_function.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Tittle
              Text(
                MyTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: MySizes.spaceBetweenSections),

              /// Form
              const MySignupForm()
            ],
          ),
        ),
      ),
    );
  }
}
