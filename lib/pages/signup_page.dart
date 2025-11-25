import 'package:flutter/material.dart';

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
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16),
                      //borderSide: Border.all(color: Colors.white)
                      ),
                      labelText: "Email",  
                      
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
