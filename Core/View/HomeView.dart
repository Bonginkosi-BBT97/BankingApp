import '../ViewModel/BankingViewModel.dart';

class HomeView {
  Map<String, String> account = {};

ViewModel viewModel = ViewModel();

  HomeView (Map<String, String> account) {
    this.account = account;
    var accountNo = account["AccountNo"];
    var balance = account["Balance"]; 

viewModel.showAccountDetails("$accountNo", "$balance"); 
    
     }

      
  }