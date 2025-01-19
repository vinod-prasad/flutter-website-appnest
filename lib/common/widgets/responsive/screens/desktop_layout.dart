import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          children: [
            //Header
            Row(
              children: [Text('Desktop Layout')],
            ),

            //body
            body ?? const SizedBox()
          ],
        ),
      ),
    );
  }
}
