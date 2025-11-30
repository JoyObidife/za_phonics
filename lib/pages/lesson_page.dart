import 'package:flutter/material.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({super.key});

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: _buildLessonsAppBar(),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _buildLessonsAppBar() {
    return SizedBox(
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 8,
                  left: 0,
                  child: Text(
                    "Lessons",
                    style: Theme.of(context).textTheme.headlineMedium,
                     textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Card(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.settings,color: Colors.pink),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
