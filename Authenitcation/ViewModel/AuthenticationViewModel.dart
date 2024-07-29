import '../../AccountsModel.dart';

class AuthenticationViewModel {
   
   AccountsModel accounts = AccountsModel();
     Map<String, String> account = {};

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