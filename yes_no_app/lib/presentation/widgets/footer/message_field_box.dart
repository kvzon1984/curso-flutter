import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;

  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final FocusNode focusNode = FocusNode();
    final colors = Theme.of(context).colorScheme;
    final outLineInputBorder = UnderlineInputBorder(
        borderSide: BorderSide(color: colors.primary),
        borderRadius: BorderRadius.circular(25));

    final inputDecoration = InputDecoration(
        hintText: 'End your message with a "?"',
        enabledBorder: outLineInputBorder,
        focusedBorder: outLineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_sharp),
          onPressed: () {
            final textValue = textController.value.text;
            // print('Boton: $textValue');
            textController.clear();
            onValue(textValue);
          },
        ));
    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        // print('Submit $value');
        textController.clear();
        focusNode.requestFocus();
        onValue(value);
      },
      // onChanged: (value) {
      //   print('onChanged $value');
      // },
    );
  }
}
