import 'package:flutter/material.dart';

class BottomPage3 extends StatefulWidget {
  const BottomPage3({super.key});

  @override
  State<BottomPage3> createState() => _nameState();
}

class _nameState extends State<BottomPage3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Bottom Page 3'),
      ),
    );
  }
}
