import 'package:banking_app/core/view/core_view.dart';
import 'package:flutter/material.dart';
import 'package:banking_app/authentication/view_model/authentication_view_model.dart';
import 'confirm_button.dart';


class LoginScreen extends StatelessWidget {

final TextEditingController accountController = TextEditingController();
final TextEditingController pinController =  TextEditingController();
final AuthenticationViewModel authenticationViewModel =  AuthenticationViewModel();

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
        obscureText: true, 
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter your PIN',
        ),
      ),
      const Spacer(),
      ConfirmButton(
        onPressed: () {
          final account = accountController.text;
          final pin = pinController.text;

        bool isAuthenticated = authenticationViewModel.authenticate(account, pin);

        if (!isAuthenticated) {
          showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Error'),
                        content: const Text('Incorrect Account or PIN.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); 
                              accountController.clear();
                              pinController.clear();
                            },
                            child: const Text('Try Again'),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CoreView()),
                 );
                }
        }
      ),
    ],
   ),
   ),
   );
  }
}