import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {

  final String name;
  const ThirdScreen({Key? key, required this.name}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Incoming Data'),
            Text(widget.name)
          ],
        ),
      ),
    );
  }
}
