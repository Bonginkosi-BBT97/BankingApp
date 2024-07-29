import '../ViewModel/BankingViewModel.dart';

class HomeView {
  Map<String, String> account = {};
  late ViewModel viewModel;

  HomeView (Map<String, String> account) {
  this.account = account;
  viewModel = ViewModel(account);
  viewModel.showAccountDetails();
  viewModel.desposit(1000);
  viewModel.showAccountDetails();
  viewModel.withdraw("500");
  viewModel.showAccountDetails();
     }
  }