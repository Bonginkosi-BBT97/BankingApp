import '../../AccountsModel.dart';

class AuthenticationViewModel {
   
   AccountsModel accounts = AccountsModel();

    accountIsTrue(String accountNumber) {

     if(accountNumber == accounts.absaAccount["AccountNo"]) {
        print("Correct ABSA Account Number"); 
        return true;

     } else if (accountNumber == accounts.fnbAccount["AccountNo"])  {
      print("Correct FNB Account Number"); 
        return true;

     }else {
      print("Incorrect Account Number");
      return false; 
     }
    }

    pinNumberIsTrue(String accountNumber, String pinNumber) {

        if (accountNumber == accounts.absaAccount["AccountNo"] && pinNumber == accounts.absaAccount["Pin"] ) {
             print("Correct ABSA Pin Number"); 
        return true;
        } else if (accountNumber == accounts.fnbAccount["AccountNo"] && pinNumber == accounts.fnbAccount["Pin"]) {
               print("Correct FNB Pin Number"); 
               return true;
        }else {
           print("Incorrect Pin Number");
           return false; 
        }
    }
}