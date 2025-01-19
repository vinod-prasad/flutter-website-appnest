import 'package:flutter/material.dart';

class AppBarActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onClicked;

  // final Bool isSelected ;

  const AppBarActionButton(this.label, this.onClicked, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // decoration: BoxDecoration(
          //   color: Colors.red
          // ),
          child: Text(label, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
