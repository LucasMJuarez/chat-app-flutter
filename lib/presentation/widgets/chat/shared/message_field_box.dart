import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String>
  onValue; // Callback para manejar el cambio de texto

  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textController =
        TextEditingController(); // Este es un elemento que nos va a dar control sobre el texto que se va a escribir en el campo de texto
    final focusNode =
        FocusNode(); // Este es un elemento que nos va a dar control sobre el foco del campo de texto
    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(40.0),
      borderSide: BorderSide(color: Colors.transparent),
    );

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: () {
          final textValue = textController.value.text;
          onValue(textValue); // Llamar al callback con el valor del texto
          textController
              .clear(); // Limpiar el campo de texto después de enviar el mensaje
        },
        icon: const Icon(Icons.send),
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode
            .unfocus(); // Desenfocar el campo de texto al tocar fuera de él
      },
      controller: textController,
      focusNode: focusNode,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController
            .clear(); // Limpiar el campo de texto después de enviar el mensaje
        focusNode.requestFocus();
        onValue(value); // Llamar al callback con el valor del texto
      },
    );
  }
}
