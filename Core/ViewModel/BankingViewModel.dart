// Show All Bank Details 
// Deposit into the account 
// Transfer to another acount 

import 'dart:ffi';
import '../ViewModel/BankingViewModel.dart';


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
    instructions();
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
      amount = newAmount.toStringAsFixed(0);
   }
  void instructions() {
    print("Enter 1 to withdraw");
    print("Enter 2 to deposit");
    print("Enter 3 to exit");
  }
}