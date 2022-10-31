import 'package:flutter/material.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Near Me',
          style: TextStyle(
            color: Colors.black,
          ),),
      ),
      body: Container(),
    );
  }
}
