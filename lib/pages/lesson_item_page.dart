import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:za_phonics/models/phonics_character.dart';
import 'package:za_phonics/models/writing_item.dart';
import 'package:za_phonics/pages/flashcard_page.dart';
import 'package:za_phonics/pages/formation_page.dart';
import 'package:za_phonics/widgets/phonics_item_card.dart';
import 'package:za_phonics/widgets/sounding_section_widget.dart';

class LessonItemPage extends StatefulWidget {
  const LessonItemPage({
    super.key,
    required this.phonicsCharacter,
    required this.color,
  });
  final PhonicsCharacter phonicsCharacter;
  final Color color;

  @override
  State<LessonItemPage> createState() => _LessonItemPageState();
}

class _LessonItemPageState extends State<LessonItemPage> {
  @override
  Widget build(BuildContext context) {
    var phonicsCharacter = widget.phonicsCharacter;
    var phonicChar = phonicsCharacter.character;
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
          PhonicsItemPageCard(
            title: "Story",
            child: Text(phonicsCharacter.story),
          ),

          // Action section
          PhonicsItemPageCard(
            title: "Action",
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(phonicsCharacter.actionImage),
                Text(phonicsCharacter.actionText),
              ],
            ),
          ),
          //
          // Flash card
          PhonicsItemPageCard(
            title: "Flash Card",
            actions: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlashcardPage(phonicChar: phonicChar),
                  ),
                );
              },
              icon: Icon(Icons.expand, color: Colors.grey.shade400),
            ),
            child: Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  width: 150,
                  height: 150,

                  child: Center(
                    child: Text(
                      phonicChar,
                      style: TextStyle(
                        fontSize: 105,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          //
          // Finger tracing
          PhonicsItemPageCard(
            title: "Formation",
            bottomItem: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                fixedSize: Size.fromWidth(MediaQuery.sizeOf(context).width),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormationPage(color: widget.color),
                  ),
                );
              },
              child: Text("Finger tracing"),
            ),

            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(24),
                ),

                width: 150,
                height: 150,

                child: Center(
                  child: Text(
                    phonicChar,
                    style: TextStyle(
                      fontSize: 105,
                      fontWeight: FontWeight.w900,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
          ),
          //
          // Sounding
          SoundingSectionWidget(
            phonicChar: phonicChar,
            phonicsCharacter: phonicsCharacter,
          ),
          //
          // Writing
          PhonicsItemPageCard(
            title: "Writing",
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Call the sounds below, and ask the ask the children to write them down.",
                ),
                Wrap(
                  alignment: WrapAlignment.start,
                  children: List.generate(
                    phonicsCharacter.listOfWriting.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 30,
                          child: Text(
                            phonicsCharacter.listOfWriting[index].character,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          //
          // Song
          PhonicsItemPageCard(
            title: "Song",
            child: Column(
              children: [
                Text(phonicsCharacter.songText),
                SongPlayerWidget(songAsset: widget.phonicsCharacter.songAudio),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SongPlayerWidget extends StatefulWidget {
  const SongPlayerWidget({super.key, required this.songAsset});
  final String songAsset;

  @override
  State<SongPlayerWidget> createState() => _SongPlayerWidgetState();
}

class _SongPlayerWidgetState extends State<SongPlayerWidget> {
  var justAudio = AudioPlayer();
  bool showText = false;
  bool playing = false;

  @override
  void dispose() {
    super.dispose();
    justAudio.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Slider(
            value: 0.5,
            onChanged: (position) {
              print(position);
            },
          ),
          IconButton(
            onPressed: () {
              justAudio.setAsset(widget.songAsset);
              justAudio.play();
              if(playing) {
                playing = false;
                justAudio.pause();
              }else{
                playing = true;
              }
              setState(() {
                
              });
            },
            icon: Icon(playing ? Icons.pause_circle :Icons.play_circle),
          ),
        ],
      ),
    );
  }
}
