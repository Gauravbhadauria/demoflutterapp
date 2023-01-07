import 'package:flutter/material.dart';

class BottomPage4 extends StatefulWidget {
  const BottomPage4({super.key});

  @override
  State<BottomPage4> createState() => _nameState();
}

class _nameState extends State<BottomPage4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Bottom Page 4'),
      ),
    );
  }
}
