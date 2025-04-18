import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(40.0),
      borderSide: BorderSide(color: Colors.transparent),
    );

    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
      ),
    );
  }
}
