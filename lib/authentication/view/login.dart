import 'dart:io';

import '../../core/view/home_view.dart';
import '../view_model/authentication_view_model.dart';

class Login {
  void authenticate() {
    AuthenticationViewModel authenticationViewModel = AuthenticationViewModel();

    while (true) {
      print("Please Enter Your Account Number");

      var accountNumber = stdin.readLineSync();

      if (authenticationViewModel.accountIsTrue("$accountNumber") == true) {
        print("Please Enter Your Pin");

        var enteredPin = stdin.readLineSync();

        if (authenticationViewModel.pinNumberIsTrue(
                "$accountNumber", "$enteredPin") ==
            true) {
          HomeView(authenticationViewModel.account);

          break;
        }
      }
    }
  }
}

void main() {
  Login login = Login();

  login.authenticate();
}
