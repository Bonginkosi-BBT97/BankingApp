import '../../accounts_model.dart';
import '../../core/view/home_view.dart';
import 'dart:io';

class AuthenticationViewModel {
   
   AccountsModel accounts = AccountsModel();
     Map<String, String> account = {};

 void authenticate() {
    

    while (true) {
      print("Please Enter Your Account Number");

      var accountNumber = stdin.readLineSync();

      if (accountIsTrue("$accountNumber") == true) {
        print("Please Enter Your Pin");

        var enteredPin = stdin.readLineSync();

        if (pinNumberIsTrue(
                "$accountNumber", "$enteredPin") ==
            true) {
          //HomeView(authenticationViewModel.account);
          print("Show the Home view and pass in the account info");
          break;
        }
      }
    }
  }

     bool accountIsTrue(String accountNumber) {
    for (var account in accounts.allAccounts) {
      if (accountNumber == account["AccountNo"]) {
        print("Correct ${account['BankAccountName']} Account Number");
        return true;
      }
    }
    print("Incorrect Account Number");
    return false;
  }

  bool pinNumberIsTrue(String accountNumber, String pinNumber) {
    for (var account in accounts.allAccounts) {
      if (accountNumber == account["AccountNo"] && pinNumber == account["Pin"]) {
        print("Correct ${account['BankAccountName']} Pin Number");
        this.account = account;
        return true;
      }
    }
    print("Incorrect Pin Number");
    return false;
  }
}