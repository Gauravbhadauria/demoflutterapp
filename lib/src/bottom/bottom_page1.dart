import 'package:flutter/material.dart';

class BottomPage1 extends StatefulWidget {
  const BottomPage1({super.key});

  @override
  State<BottomPage1> createState() => _nameState();
}

class _nameState extends State<BottomPage1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Bottom Page 1'),
      ),
    );
  }
}
