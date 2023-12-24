import 'package:flutter/material.dart';

class AppBarTextField extends StatelessWidget {
  const AppBarTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: "Procurar mais de 50.000 itens",
        labelStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        border: InputBorder.none,
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
