// Show All Bank Details 
// Deposit into the account 
// Transfer to another acount 

import 'dart:ffi';
import '../../Authenitcation/View/Login.dart';
import '../ViewModel/BankingViewModel.dart';
import 'dart:io';

class ViewModel {
 Map<String, String> _account = {};
late String _accountName;
late String _accountNumber; 
late String _amount;

ViewModel(Map<String, String> account){
  this._account = account;
  this._accountName = account['BankAccountName'] ?? 'Unknown';
  this._accountNumber = account['AccountNo'] ?? 'Unknown';
  this._amount = account['Balance'] ?? '0.0';
}
 
  void showAccountDetails() {
    print("Account Name: $_accountName");
    print("Account No: $_accountNumber");
    print("Acc Balance: R $_amount");
    _handleUserInput();
  }

   void _desposit( String depositAmount) {
      double current = double.parse(_amount);
      double deposit = double.parse(depositAmount);
      double newAmount = current + deposit;

      print("R $depositAmount has been deposited");
      _amount = newAmount.toString();
   }

   void _withdraw( String withdrawAmount) {
     double current = double.parse(_amount);
      double withdraw = double.parse(withdrawAmount);
      double newAmount = current - withdraw;

      print("R $withdrawAmount has been withdrawn");
      _amount = newAmount.toString();
   }
  void _instructions() {
    print("Enter 1 to withdraw");
    print("Enter 2 to deposit");
    print("Enter 0 to exit");
  }

  void _handleUserInput() {
     while (true) {
      _instructions();
      String? input = stdin.readLineSync(); 
      switch (input) {
        case '1':
          print('Enter amount to withdraw:');
          String? withdrawAmount = stdin.readLineSync();
          if (withdrawAmount != null) {
            _withdraw(withdrawAmount);
          }
          break;
        case '2':
          print('Enter amount to deposit:');
          String? depositAmount = stdin.readLineSync();
          if (depositAmount != null) {
           _desposit(depositAmount);
          }
          break;
          case '0':
       print('Exiting...');
          main();
          return;
        default:
          print('Invalid input, please enter 1, 2, or 0.');
      }
      showAccountDetails();
   }
  }
}