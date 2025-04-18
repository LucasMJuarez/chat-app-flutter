import 'package:chat_app/presentation/widgets/chat/my_message_bubble.dart';
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
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 200,
                itemBuilder: (context, index) {
                  return const MyMessageBubble();
                  // You can customize the message widget here
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
