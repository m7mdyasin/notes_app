import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Container(
        height: 50,
        width: 50,

        decoration: BoxDecoration(
          color: const Color.fromARGB(47, 255, 255, 255),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          // child: Icon(Icons.search)
        ),
      ),
    );
  }
}
