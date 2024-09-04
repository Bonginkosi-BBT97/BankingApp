import 'dart:io';

import '../../core/view/home_view.dart';
import '../view_model/authentication_view_model.dart';

void main() {
AuthenticationViewModel authenticationViewModel = AuthenticationViewModel();

  print("Please Enter Your Account Number");

  var accountNumber = stdin.readLineSync();

if (authenticationViewModel.accountIsTrue("$accountNumber") == true) {
    print("Please Enter Your Pin");

  var enteredPin = stdin.readLineSync();

  if (authenticationViewModel.pinNumberIsTrue("$accountNumber", "$enteredPin") == true) {

    HomeView(authenticationViewModel.account);
  } 
 
 }
  
}