// Show All Bank Details 
// Deposit into the account 
// Transfer to another acount 

class ViewModel {

   showAccountDetails(String account, String amount) {
      print("Account No: $account");
      print("Acc Balance: R $amount");
   }

   desposit(String currentAmount, String despositAmount) {
      var amount = currentAmount + despositAmount;

    print("R $despositAmount as been deposited");
    print("The current amount is now R $amount");
      return amount;
   }

}