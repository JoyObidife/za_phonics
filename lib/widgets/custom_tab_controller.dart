import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key, required this.tabController});

  final TabController tabController;

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  @override
  void initState() {
    super.initState();
    widget.tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/curve_rect.png"),
          fit: BoxFit.fitWidth,
        ),
      ),

      height: 120,
      child: TabBar(
        controller: widget.tabController,
        dividerHeight: 0,
        indicatorColor: Colors.transparent,
        tabs: [
          _buildBottomNavItem(index: 0, activeColor: Colors.amber.shade900),
          _buildBottomNavItem(index: 1, activeColor: Colors.green.shade900),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem({
    required int index,
    required Color activeColor,
  }) {
    return Container(
      height: 45,
      width: 45,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: widget.tabController.index == index
            ? activeColor
            : Colors.grey.shade400,
      ),
      child: Tab(
        icon: Icon(
          Icons.book,
          size: 35,
          color: widget.tabController.index == index
              ? Colors.white
              : activeColor,
        ),
      ),
    );
  }
}
