import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
       child: Center(child: Text('Page 2', textDirection: TextDirection.ltr)),
    );
  }
}