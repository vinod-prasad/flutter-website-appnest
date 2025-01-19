import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Layout'),
      ),
      body: Expanded(
        child: Column(
          children: [
            //Header
            Row(
              children: [Text('Mobile Layout')],
            ),

            //body
            body ?? const SizedBox()
          ],
        ),
      ),
    );
  }
}
