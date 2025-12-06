import 'package:flutter/material.dart';
import 'package:za_phonics/pages/home_page.dart';
import 'package:za_phonics/widgets/custom_textfield.dart';
import 'package:za_phonics/widgets/password_textfield.dart';
import 'package:za_phonics/widgets/signup_section.dart';
import 'package:za_phonics/widgets/type_of_user_selection_section.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Column(
             // crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                Image.asset(
                  "assets/images/mouse_nobg.png",
                  width: 250,
                  height: 250,
                ),
                if (currentPageIndex == 0) SignupSection(),
                if (currentPageIndex == 1)
                  Center(
                    child: TypeOfUserSelectionSection(
                      key: Key("grid1"),
                      heading: "Are you a guardian or a teacher",
                      options: ["Guardian", "Tutor", "Teacher", "Other"],
                      onSelect: (selectedItems) => print(selectedItems),
                    ),
                  ),
                if (currentPageIndex == 2)
                  Center(
                    child: TypeOfUserSelectionSection(
                      key: Key("grid2"),
                      heading: "Select your child's age group",
                      options: ['0-3', '4-5', '6-8', '8 +'],
                      onSelect: (selectedItems) => print(selectedItems),
                    ),
                  ),
                SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(
                        MediaQuery.sizeOf(context).width * 0.7,
                      ),
                    ),
                    onPressed: () {
                      if (currentPageIndex == 2) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      } else {
                        // increment current page index
                      setState(() {
                        currentPageIndex++;
                      });
                      }
                      
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
