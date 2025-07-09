import 'package:flutter/material.dart';

class CustomFloatingActionButtoun extends StatelessWidget {
  CustomFloatingActionButtoun({super.key, required this.floatingActionButton});
  FloatingActionButton floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(158, 142, 197, 252),
            Color(0xFFe0c3fc),
            Colors.white38,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Color(0xFF8ec5fc).withOpacity(0.25),
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: floatingActionButton,
    );
  }
}
