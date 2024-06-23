import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_project/features/common/styles/spacing_styles.dart';
import 'package:my_project/utils/constants/image_strings.dart';
import 'package:my_project/utils/constants/sizes.dart';
import 'package:my_project/utils/constants/text_strings.dart';
import 'package:my_project/utils/helpers/helper_function.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title and Subtitle
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage(MyImageStrings.appLogo),
                    height: 100,
                  ),
                  Text(MyTexts.loginTitle),
                  SizedBox(height: MySizes.sm),
                  Text(MyTexts.loginSubTitle),
                ],
              ),
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
                            onPressed: () {},
                            child: const Text(MyTexts.createAccount)),
                      ),
                      const SizedBox(height: MySizes.spaceBetweenSections),
                    ],
                  ),
                ),
              ),

              /// Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                          color: dark ? Colors.black87 : Colors.grey,
                          thickness: 0.5,
                          indent: 60,
                          endIndent: 5)),
                  const Text(MyTexts.orSignInWith),
                  Flexible(
                      child: Divider(
                          color: dark ? Colors.black87 : Colors.grey,
                          thickness: 0.5,
                          indent: 5,
                          endIndent: 60)),
                ],
              ),
              const SizedBox(height: MySizes.spaceBetweenSections),
              /// Footer
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: AssetImage(MyImageStrings.googleIcon), height: 50,),
                  Image(image: AssetImage(MyImageStrings.facebookIcon), height: 50,),
                  Image(image: AssetImage(MyImageStrings.twitterIcon), height: 50,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
