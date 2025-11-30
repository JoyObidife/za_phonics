import 'package:flutter/material.dart';
import 'package:za_phonics/widgets/custom_textfield.dart';
import 'package:za_phonics/widgets/password_textfield.dart';

class SignupSection extends StatelessWidget {
  const SignupSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome to Za Phonics!",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            spacing: 16,
            children: [
              CustomTextField(label: "Email"),
              PasswordTextfield(),
            ],
          ),
        ),
        // for adding checkbox
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: AgreementWidget(),
        ),
      ],
    );
  }
}

class AgreementWidget extends StatelessWidget {
  const AgreementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
              side: BorderSide(color: Colors.white),
            ),
            Text("SELECT ALL", style: TextStyle(color: Colors.white)),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(left: 24),

          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    checkColor: Colors.white,
                    activeColor: Colors.white,
                    focusColor: Colors.white,
                  ),
                  Expanded(
                    child: Text(
                      "I agree to the Privacy Policy and the Terms of Service",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    checkColor: Colors.white,
                    activeColor: Colors.white,
                    focusColor: Colors.white,
                  ),
                  Expanded(
                    child: Text(
                      "I want to receive email updates from Za Learning", style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
