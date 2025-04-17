import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gregoria '),
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://i.pinimg.com/474x/c7/4c/a6/c74ca6827eed655aa080143a0970242f.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
