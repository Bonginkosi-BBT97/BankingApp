// Show All Bank Details 
// Deposit into the account 
// Transfer to another acount 

import 'dart:ffi';
import '../ViewModel/BankingViewModel.dart';
import 'dart:io';

class ViewModel {
 Map<String, String> account = {};
late String accountName;
late String accountNumber; 
late String amount;

ViewModel(Map<String, String> account){
  this.account = account;
  this.accountName = account['BankAccountName'] ?? 'Unknown';
  this.accountNumber = account['AccountNo'] ?? 'Unknown';
  this.amount = account['Balance'] ?? '0.0';
}
 
  void showAccountDetails() {
    print("Account Name: $accountName");
    print("Account No: $accountNumber");
    print("Acc Balance: R $amount");
    handleUserInput();
  }

   void desposit( String depositAmount) {
      double current = double.parse(amount);
      double deposit = double.parse(depositAmount);
      double newAmount = current + deposit;

      print("R $depositAmount has been deposited");
      amount = newAmount.toString();
   }

   void withdraw( String withdrawAmount) {
     double current = double.parse(amount);
      double withdraw = double.parse(withdrawAmount);
      double newAmount = current - withdraw;

      print("R $withdrawAmount has been withdrawn");
      amount = newAmount.toString();
   }
  void instructions() {
    print("Enter 1 to withdraw");
    print("Enter 2 to deposit");
    print("Enter 3 to view account details");
    print("Enter 0 to exit");
  }

  void handleUserInput() {
     while (true) {
      instructions();
      String? input = stdin.readLineSync(); 
      switch (input) {
        case '1':
          print('Enter amount to withdraw:');
          String? withdrawAmount = stdin.readLineSync();
          if (withdrawAmount != null) {
            withdraw(withdrawAmount);
          }
          break;
        case '2':
          print('Enter amount to deposit:');
          String? depositAmount = stdin.readLineSync();
          if (depositAmount != null) {
           desposit(depositAmount);
          }
          break;
          case '3':
        showAccountDetails();
          break;
        case '0':
          print('Exiting...');
          return;
        default:
          print('Invalid input, please enter 1, 2, 3, or 0.');
      }
   }
  }
}