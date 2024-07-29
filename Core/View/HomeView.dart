import '../ViewModel/BankingViewModel.dart';

class HomeView {
  Map<String, String> account = {};
  late ViewModel viewModel;

  HomeView (Map<String, String> account) {
  this.account = account;
  viewModel = ViewModel(account);
  viewModel.showAccountDetails();

     }
  }