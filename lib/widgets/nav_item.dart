import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final int index;
  final int currentIndex;
  final IconData icon;
  final String label;
  final Function(int) onTabTapped;

  const NavItem(
      {super.key,
      required this.index,
      required this.currentIndex,
      required this.icon,
      required this.label,
      required this.onTabTapped});

  @override
  Widget build(BuildContext context) {
    bool isActive = index == currentIndex;
    Color activeColor = Colors.blue; // Customize the active icon color here
    Color inactiveColor = Colors.grey; // Customize the inactive icon color here
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () => onTabTapped(index),
      child: Ink(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 24,
              color: isActive ? activeColor : inactiveColor,
            ),
            SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: isActive ? activeColor : inactiveColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
