import 'package:sidekick/app/app.locator.dart';
import 'package:sidekick/app/app.router.dart';
import 'package:sidekick/ui/auth/auth_view.form.dart';
import 'package:sidekick/ui/service/login_viewmodel.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

class AuthViewModel extends LoginViewModel {
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  AuthViewModel() : super(successRoute: Routes.addressSelectionView);

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() =>
      _firebaseAuthenticationService.loginWithEmail(
        email: emailValue!,
        password: passwordValue!,
      );

  void navigateToCreateAccount() =>
      navigationService.navigateTo(Routes.registerAccountView);
}
