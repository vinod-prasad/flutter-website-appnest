import 'package:flutter/material.dart';

class TempUi extends StatelessWidget {
  const TempUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
        child: TextField(
      decoration: InputDecoration(
          hintText: "Enter you name", border: OutlineInputBorder()),
    ));
  }
}
