import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import '../widgets/cuerpo/her_messahe_bubble.dart';
import '../widgets/cuerpo/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/footer/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.tertiary,
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://styles.redditmedia.com/t5_e6erq/styles/profileIcon_36kgbaaw0kh01.jpg?width=256&height=256&frame=1&auto=webp&crop=256:256,smart&s=1267177ffa2fb5ed19e7bbbe4de24963589213ce'),
          ),
        ),
        centerTitle: false,
        title: const Text('Jefe ;)'),
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>(); // esta a la escucha para ver si cambio el estado del provider

    return SafeArea( // Toma el area segura 
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                  controller: chatProvider.chatScrollControler,
                  itemCount: chatProvider.messageList.length,
                  itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];

                  return (message.fromWho == FromWho.hers)
                      ? HerMessageBubble( message: message )
                      : MyMessageBubble( message: message );

                    // return (index % 2 == 0)
                    //     ? const HerMessageBubble()
                    //     : const MyMessageBubble();
                  },
                ),
              ),
            // Caja de mensaje
            MessageFieldBox(
              // onValue: chatProvider.sendMessage, // esto es lo mismo que en la linea de abajo 
              onValue: (value) => chatProvider.sendMessage(value)
            )
          ],
        ),
      ),
    );
  }
}
