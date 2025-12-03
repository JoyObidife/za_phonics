import 'package:flutter/material.dart';
import 'package:za_phonics/models/phonics_character.dart';

class LessonItemPage extends StatefulWidget {
  const LessonItemPage({super.key, required this.phonicsCharacter, required this.color});
  final PhonicsCharacter phonicsCharacter;
  final Color color;

  @override
  State<LessonItemPage> createState() => _LessonItemPageState();
}

class _LessonItemPageState extends State<LessonItemPage> {
  @override
  Widget build(BuildContext context) {
    var phonicChar = widget.phonicsCharacter.character;
    // how to create a container widget
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: widget.color,
        foregroundColor: Colors.white,
        title: Text("Lesson /$phonicChar/"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // Story section
          _buildCardView(
            title: "Story",
            child: Text(widget.phonicsCharacter.story)
          ),
        
        // Action section
        _buildCardView(title: "Action", child: Column(children: [],))
        ],
      ),
    );
  }

  Container _buildCardView({required String title, required Widget child}) {
    return Container(
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(10)
         ),
         padding: EdgeInsets.all(12),
         margin: EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,),),
              ),
              Container(
                child: child,
              )
            ],
          ),
        );
  }
}