import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_project/common/styles/spacing_styles.dart';
import 'package:my_project/common/widgets/login_signup/form_divider.dart';
import 'package:my_project/common/widgets/login_signup/social_buttons.dart';
import 'package:my_project/features/authentication/screens/signup/signup.dart';
import 'package:my_project/utils/constants/image_strings.dart';
import 'package:my_project/utils/constants/sizes.dart';
import 'package:my_project/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title and Subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                    image: AssetImage(MyImageStrings.appLogo),
                    height: 100,
                  ),
                  Text(
                    MyTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: MySizes.sm),
                  Text(
                    MyTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              /// Input fields
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: MySizes.spaceBetweenSections),
                  child: Column(
                    children: [
                      /// Email
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: MyTexts.email,
                        ),
                      ),
                      const SizedBox(height: MySizes.spaceBtwInputField),

                      /// Password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: MyTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: MySizes.spaceBtwInputField / 2),

                      /// Forget password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Remember me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(MyTexts.rememberMe)
                            ],
                          ),

                          /// Forgot Password
                          TextButton(
                              onPressed: () {},
                              child: const Text(MyTexts.forgotPassword))
                        ],
                      ),
                      const SizedBox(height: MySizes.spaceBetweenSections),

                      /// SignIn button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(MyTexts.signIn)),
                      ),

                      const SizedBox(height: MySizes.spaceBetweenItems),

                      /// Create account button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () => Get.to(() => const SignupScreen()),
                            child: const Text(MyTexts.createAccount)),
                      ),

                      const SizedBox(height: MySizes.spaceBetweenSections),
                    ],
                  ),
                ),
              ),

              /// Divider
              FormDivider(
                dividerText: MyTexts.orSignInWith.capitalize!,
              ),

              const SizedBox(height: MySizes.spaceBetweenSections),

              /// Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
