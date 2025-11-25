import 'package:flutter/material.dart';
import 'package:za_phonics/widgets/custom_textfield.dart';
import 'package:za_phonics/widgets/password_textfield.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Image.asset(
              "assets/images/mouse_nobg.png",
              width: 250,
              height: 250,
            ),
            Text(
              "Welcome to Za Phonics!",
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
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
            AgreementWidget(),
          ],
        ),
      ),
    );
  }
}

class AgreementWidget extends StatelessWidget {
  const AgreementWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
            Text("SELECT ALL"),
          ],
          
        ),

        Padding(
          padding: const EdgeInsets.only(left:24.0),
          child: Column(children: [Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
                checkColor: Colors.white,
                activeColor: Colors.white,
                focusColor: Colors.white,
              ),
              Expanded(child: Text("I agree to the Privacy Policy and the Terms of Service")),
            ],
            ),Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
                checkColor: Colors.white,
                activeColor: Colors.white,
                focusColor: Colors.white,
              ),
              Expanded(child: Text("I want to receive email updates from Za Learning")),
            ],
            
          ),],),
        )
      ],
    );
  }
}
