import 'package:flutter/material.dart';

class GroupItem extends StatefulWidget {
  const GroupItem({super.key});

  @override
  State<GroupItem> createState() => _GroupItemState();
}

class _GroupItemState extends State<GroupItem> {
  var dummyListOfCharacters = ["s", "ou", "j", "ee", "er", "f"];
  var color = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Positioned(left: 0, right: 16, child: _buildHeading()),
          Positioned(
            top: 110,
            left: 32,
            right: 32,
            child: _buildGrid(context, dummyListOfCharacters),
          ),
          Positioned(
            bottom: 8,
            left: 32,
            right: 32,

            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                foregroundColor: Colors.white,
              ),
              child: Text("Practice Group 1 with readers"),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _buildGrid(
    BuildContext context,
    List<String> dummyListOfCharacters,
  ) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.80,
      height: 350,

      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: dummyListOfCharacters.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                dummyListOfCharacters[index],
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container _buildHeading() {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/group_bg.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Center(
          child: Text(
            "Group 1",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
