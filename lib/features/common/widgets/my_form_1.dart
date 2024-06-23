// flutter imports
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:my_project/features/common/widgets/custom_form_field.dart';
import 'package:my_project/utils/extensions.dart';
// my imports
// custom imports

class MyForm1 extends StatefulWidget {
  const MyForm1({super.key});

  @override
  State<MyForm1> createState() => _MyForm1State();
}

class _MyForm1State extends State<MyForm1> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomFormField(
              hintText: 'Email Address',
              keyboardType: TextInputType.emailAddress,
              validator: (val) {
                if (val == null || !val.isValidEmail) {
                  return 'Enter a valid Email';
                }
                return null; // Validation successful
              },
            ),
            CustomFormField(
              hintText: 'Phone Number',
              isPhoneNumber: true,
              initialPhoneNumber: PhoneNumber(isoCode: 'KE'),
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Enter a valid Phone Number';
                }
                if (!val.isValidKenyaPhoneNumber) {
                  return 'Must start with 7 or 1 and be exactly 9 digits';
                }
                return null; // Validation successful
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // Perform registration or form submission
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Form Submitted')),
                  );
                }
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
