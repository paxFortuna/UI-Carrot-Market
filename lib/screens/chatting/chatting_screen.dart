import 'package:flutter/material.dart';

import '../../models/chat_message.dart';
import '../components/appbar_preferred_size.dart';
import 'components/chat_container.dart';

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
          bottom: appBarBottomLine,
      ),
      body: ListView(
        children: List.generate(
          chatMessageList.length,
              (index) => ChatContainer(chatMessage: chatMessageList[index]),
        ),
      ),
    );
  }
}
