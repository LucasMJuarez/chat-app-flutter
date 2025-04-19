import 'package:chat_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'Hola, ¿cómo estás?', fromWho: FromWho.me),
    Message(text: "Ya regresaste de la playa", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    //Todo implementar metodo
  }
}
