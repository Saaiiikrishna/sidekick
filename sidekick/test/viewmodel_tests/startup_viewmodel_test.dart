import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sidekick/app/app.router.dart';
import 'package:sidekick/ui/startup/startup_viewmodel.dart';

import '../helpers/test_helpers.dart';

StartUpViewModel _getModel() => StartUpViewModel();

void main() {
  group('StartupViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());

    group('runStartupLogic -', () {
      test(
          'When called should check if we have a logged in user on Userservice',
          () async {
        final userService = getAndRegisterUserService();
        final model = _getModel();
        await model.runStartupLogic();
        verify(userService.hasLoggedInUser);
      });

      test('When we have no logged in user, should navigate to loginview',
          () async {
        final navigationService = getAndRegisterNavigationService();
        final model = _getModel();
        await model.runStartupLogic();
        verify(navigationService.replaceWith(Routes.authView));
      });

      test(
          'When hasLoggedInUser is true, should call syncUserAccount on the userService.',
          () async {
        final userService = getAndRegisterUserService(hasLoggedInUser: true);
        final model = _getModel();
        await model.runStartupLogic();
        verify(userService.syncUserAccount());
      });

      test(
          'When hasLoggedInUser is true, should get currentUser from userService.',
          () async {
        final userService = getAndRegisterUserService(hasLoggedInUser: true);
        final model = _getModel();
        await model.runStartupLogic();
        verify(userService.currentUser);
      });

      test(
          'When currentUser does not have a default address, navigate to addressSelectionView.',
          () async {
        final navigationService = getAndRegisterNavigationService();
        getAndRegisterUserService(hasLoggedInUser: true);
        final model = _getModel();
        await model.runStartupLogic();
        verify(navigationService.navigateTo(Routes.addressSelectionView));
      });
    });
  });
}
