import 'package:flutter/material.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyCarrot',
          style: TextStyle(
            color: Colors.black,
          ),),
      ),
      body: Container(),
    );
  }
}
