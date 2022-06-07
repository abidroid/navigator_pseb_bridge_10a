import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String name;
  const SecondScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),

      body: Center(

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            const Text('Incoming Data'),
            Text(name)
          ],
        ),
      ),
    );
  }
}
