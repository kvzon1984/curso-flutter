import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_tes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollControler = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'Hola Jefe', fromWho: FromWho.me),
    Message(text: 'Hoy hay reunion?', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);

    messageList.add(newMessage);

    if (text.endsWith('?')) {
      herResponse();
    }
    notifyListeners(); // Notifica a todo el que este escuchando para que se redibuje
    moveScrollToBottom();
  }

  Future<void> herResponse() async {
    final herResponse = await getYesNoAnswer.getAnswer();
    messageList.add(herResponse);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollControler.animateTo(chatScrollControler.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }
}
