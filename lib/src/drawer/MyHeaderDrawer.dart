import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({super.key});

  @override
  State<MyDrawerHeader> createState() => _nameState();
}

class _nameState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 200,
      child: Center(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Image(
                  image: AssetImage('assets/images/man.png'),
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            Center(
              child:  Text(
                  'Gaurav Bhadauria',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                    
                  ),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
