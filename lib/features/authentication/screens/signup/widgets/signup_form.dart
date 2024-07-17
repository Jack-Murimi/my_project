import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_project/common/widgets/login_signup/form_divider.dart';
import 'package:my_project/common/widgets/login_signup/social_buttons.dart';
import 'package:my_project/features/authentication/screens/signup/widgets/term_condition_checkbox.dart';
import 'package:my_project/utils/constants/sizes.dart';
import 'package:my_project/utils/constants/text_strings.dart';

class MySignupForm extends StatelessWidget {
  const MySignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: MyTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: MySizes.spaceBtwInputField),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: MyTexts.secondName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              )
            ],
          ),

          const SizedBox(height: MySizes.spaceBtwInputField),

          /// UserName
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: MyTexts.userName,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: MySizes.spaceBtwInputField),

          /// Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: MyTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: MySizes.spaceBtwInputField),

          /// Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: MyTexts.phoneNumber, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: MySizes.spaceBtwInputField),

          /// Password
          TextFormField(
            obscureText: true,
            expands: false,
            decoration: const InputDecoration(
                labelText: MyTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),

          const SizedBox(height: MySizes.spaceBetweenSections),

          /// Terms and condition checkBox
          const MyTermsAndConditionCheckbox(),

          const SizedBox(height: MySizes.spaceBetweenSections),

          /// Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: const Text(MyTexts.createAccount)),
          ),

          const SizedBox(
            height: MySizes.spaceBetweenSections,
          ),

          /// Divider
          FormDivider(dividerText: MyTexts.orSignUpWith.capitalize!),

          const SizedBox(
            height: MySizes.spaceBetweenSections,
          ),

          /// Social buttons
          const SocialButtons(),
          const SizedBox(
            height: MySizes.spaceBetweenSections,
          ),
        ],
      ),
    );
  }
}
