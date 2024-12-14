import 'package:flutter/material.dart';

class ButtonFill extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ButtonFill({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1,
        height: 50,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.white,
            elevation: 0,
            textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          child: Text(text),
        ),
      ),
    );
  }
}
