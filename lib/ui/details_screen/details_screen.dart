import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({required this.name, required this.size, Key? key})
      : super(key: key);

  final String name;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Screen')),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 50),
            Text('NAME: $name', style: TextStyle(fontSize: 40)),
            SizedBox(height: 50),
            Text('SIZE: ${size.toStringAsFixed(2)} MB', style: TextStyle(fontSize: 32)),
        ]),
      ),
    );
  }
}
