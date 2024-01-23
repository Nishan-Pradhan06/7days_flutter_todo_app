import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter this time'),
      ),
      body: Container(
        child: Row(
          children: [
            Text('fsdf'),
            Text('fsdf'),
            Text('fsdf'),
            Column(
              children: [
                Text("hello"),
                Text("hello"),
                Text("hello"),
                Text("hello"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
