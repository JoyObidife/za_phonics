import 'package:flutter/material.dart';
import 'package:za_phonics/pages/home_page.dart';
import 'package:za_phonics/widgets/custom_textfield.dart';
import 'package:za_phonics/widgets/password_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/mouse_nobg.png", width: 250, height: 250),
              Text(
                "Welcome back! Let's return into your learning journey!",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),

              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  spacing: 16,
                  children: [
                    CustomTextField(label: "Email"),
                    PasswordTextfield(),
                    Text(
                      "Forgotten Password?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 150),
              Padding(
                padding: const EdgeInsets.all(24),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
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
      ),
    );
  }
}
