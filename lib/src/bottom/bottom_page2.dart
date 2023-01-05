import 'package:flutter/material.dart';

class BottomPage2 extends StatefulWidget {
  const BottomPage2({super.key});

  @override
  State<BottomPage2> createState() => _nameState();
}

class _nameState extends State<BottomPage2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Bottom Page 2'),
      ),
    );
  }
}
