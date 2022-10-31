import 'package:flutter/material.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chatting',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
