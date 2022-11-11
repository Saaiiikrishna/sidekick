import 'package:sidekick/app/app.locator.dart';
import 'package:sidekick/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnBoardingViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();

  void navigateToLoginScreen() => navigationService.navigateTo(Routes.authView);
}
