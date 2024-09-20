import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  final VoidCallback onPressed; // Callback for button press

  const ConfirmButton({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Makes the button fill the width of the screen
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
        ),
        child: const Text('Confirm',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}
