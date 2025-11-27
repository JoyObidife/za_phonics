import 'package:flutter/material.dart';

class TypeOfUserSelectionSection extends StatelessWidget {
  const TypeOfUserSelectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Are you a guardian or a teacher",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.height * 0.4,
          child: GridView.builder(
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return SelectionGridItem();
            },
            
          ),
        ),
      ],
    );
  }
}

class SelectionGridItem extends StatelessWidget {
  const SelectionGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      color: Colors.white,
      child: Text(
        "Item",
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
