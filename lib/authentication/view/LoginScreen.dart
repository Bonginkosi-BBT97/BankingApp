import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {

final TextEditingController accountController = TextEditingController();
final TextEditingController pinController =  TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text('LOGIN'),
    ),
   body: Padding(
    padding: const EdgeInsets.all(16.0),
   child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text('Account Number',
      style: TextStyle(fontSize: 16),
      ),
      TextField(
        controller: accountController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter your account number',
        ),
      ),
      const SizedBox(height: 16),
      const Text(
        'PIN',
        style: TextStyle(fontSize: 16),
      ),
      TextField(
        controller: pinController,
        obscureText: true, // Hides the PIN input,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter your PIN',
        ),
      )
    ],
   ),
   ),
   );
  }
}