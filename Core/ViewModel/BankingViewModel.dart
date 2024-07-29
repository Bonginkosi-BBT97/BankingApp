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
  }

  String desposit(String currentAmount, double depositAmount) {
      double current = double.parse(currentAmount);
      double newAmount = current + depositAmount;

      print("R $depositAmount has been deposited");
      return newAmount.toStringAsFixed(2);
   }

  String withdraw(String currentAmount, String withdrawAmount) {
     double current = double.parse(currentAmount);
      double withdraw = double.parse(withdrawAmount);
      double newAmount = current - withdraw;

      print("R $withdrawAmount has been withdrawn");
      print("The current amount is now R ${newAmount.toStringAsFixed(2)}");
      return newAmount.toStringAsFixed(2);
   }

}