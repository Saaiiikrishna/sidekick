import 'package:sidekick/app/app.locator.dart';
import 'package:sidekick/app/app.router.dart';
import 'package:sidekick/ui/service/login_viewmodel.dart';
import 'package:sidekick/ui/register/register_account_view.form.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

class RegisterAccountViewModel extends LoginViewModel {
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  RegisterAccountViewModel() : super(successRoute: Routes.addressSelectionView);

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() =>
      _firebaseAuthenticationService.createAccountWithEmail(
        email: emailValue!,
        password: passwordValue!,
      );

  void navigateBack() => navigationService.back();
}
