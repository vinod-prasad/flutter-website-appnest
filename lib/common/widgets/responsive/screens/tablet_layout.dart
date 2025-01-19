import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabletLayout Layout'),
      ),
      body: Expanded(
        child: Column(
          children: [
            //Header
            Row(
              children: [Text('TabletLayout Layout')],
            ),

            //body
            body ?? const SizedBox()
          ],
        ),
      ),
    );
  }
}
