import 'package:flutter/material.dart';

class DialogBoxButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed; // Use final

  DialogBoxButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.black,
      child: Text(
        text,
        style: TextStyle(color: Colors.orange),
      ),
    );
  }
}
