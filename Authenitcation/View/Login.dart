import 'dart:io';

import '../ViewModel/AuthenticationViewModel.dart';

void main() {
AuthenticationViewModel authenticationViewModel = AuthenticationViewModel();

  print("Please Enter Your Account Number");

  var accountNumber = stdin.readLineSync();

if (authenticationViewModel.accountIsTrue("$accountNumber") == true) {
    print("Please Enter Your Pin");

  var enteredPin = stdin.readLineSync();

  if (authenticationViewModel.pinNumberIsTrue("$accountNumber", "$enteredPin") == true) {

     print("Authentication Details: Acc = $accountNumber, Pin = $enteredPin");
  } 
 
 }
  
}