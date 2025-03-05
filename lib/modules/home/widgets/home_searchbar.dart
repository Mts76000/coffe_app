import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HomeSearchbar extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  const HomeSearchbar({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      height: screenHeight * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFF313131),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          right: 3,
          left: 3,
          top: screenHeight * 0.07 * 0.2,
        ),
        child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(LucideIcons.search, color: Colors.white),
            hintText: 'Search for coffe',
          ),
        ),
      ),
    );
  }
}
