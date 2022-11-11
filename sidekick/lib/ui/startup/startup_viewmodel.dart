import 'package:sidekick/app/app.locator.dart';
import 'package:sidekick/app/app.logger.dart';
import 'package:sidekick/app/app.router.dart';
import 'package:sidekick/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends BaseViewModel {
  final log = getLogger('StartUpViewModel');
  final _userService = locator<UserService>();
  final _navigationService = locator<NavigationService>();

  Future<void> runStartupLogic() async {
    if (_userService.hasLoggedInUser) {
      log.v(
          'We found a user on the device, synchronizing the user profile ...');
      await _userService.syncUserAccount();

      final currentUser = _userService.currentUser;
      log.v('User synchronization complete. User profile: $currentUser');

      if (!currentUser.hasAddress) {
        _navigationService.navigateTo(Routes.addressSelectionView);
      }
    } else {
      log.v('No user found on device, navigating to On-Boarding Screen');
      _navigationService.replaceWith(Routes.onBoardingView);
    }
  }
}
