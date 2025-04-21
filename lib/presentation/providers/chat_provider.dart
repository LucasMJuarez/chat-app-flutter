import 'package:chat_app/config/helpers/get_yes_no_answer.dart';
import 'package:chat_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'Hola, ¿cómo estás?', fromWho: FromWho.me),
    Message(text: "Ya regresaste de la playa", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return; // Evita enviar mensajes vacíos
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    if (text.endsWith('?')) {
      herReply(); // Espera la respuesta de la IA si el mensaje es una pregunta
    }
    notifyListeners(); // Notifica a los widgets que dependen de este provider
    moveScrollToBottom(); // Desplaza la vista hacia abajo después de enviar el mensaje
  }

  Future<void> herReply() async {
    await Future.delayed(const Duration(seconds: 1));
    final herMessage = await getYesNoAnswer.getAnswer();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
