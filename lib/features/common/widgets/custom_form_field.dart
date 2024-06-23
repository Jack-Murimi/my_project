import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CustomFormField extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final String? Function(String?) validator;
  final TextInputType keyboardType; 
  final bool isPhoneNumber;
  final PhoneNumber? initialPhoneNumber;

  const CustomFormField({
    super.key,
    this.obscureText = false,
    required this.hintText,
    required this.validator,
    this.keyboardType = TextInputType.text,
    this.isPhoneNumber = false,
    this.initialPhoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: isPhoneNumber
          ? InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                // Handle input change if needed
              },
              selectorConfig: const SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              ),
              initialValue: initialPhoneNumber,
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.disabled,
              hintText: hintText,
              inputDecoration: InputDecoration(hintText: hintText),
              validator: validator,
              formatInput: false, // Disable automatic formatting
            )
          : TextFormField(
              obscureText: obscureText,
              decoration: InputDecoration(hintText: hintText),
              validator: validator,
              keyboardType: keyboardType,
            ),
    );
  }
}
