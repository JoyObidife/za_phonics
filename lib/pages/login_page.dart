import 'package:flutter/material.dart';
import 'package:za_phonics/pages/home_page.dart';
import 'package:za_phonics/widgets/custom_textfield.dart';
import 'package:za_phonics/widgets/password_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/mouse_nobg.png", width: 250, height: 250),
            Text(
              "Welcome back! Let's return to your phonics learning journey.",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 24, color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                spacing: 16,
                children: [
                  CustomTextField(label: "Email"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      PasswordTextfield(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 56),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.white,
                      ),
                      child: Text("Sign In"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}