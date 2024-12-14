import 'package:flutter/material.dart';

class ButtonStroke extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ButtonStroke({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32, top: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Theme.of(context).primaryColor,
            textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            side: BorderSide(color: Theme.of(context).primaryColor, width: 1),
            elevation: 0, // Remove shadow
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          child: Text(text),
        ),
      ),
    );
  }
}
