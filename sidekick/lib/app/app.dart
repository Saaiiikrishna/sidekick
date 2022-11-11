import 'package:sidekick/api/firestore_api.dart';
import 'package:sidekick/services/user_service.dart';
import 'package:sidekick/ui/address_selection/address_selection_view.dart';
import 'package:sidekick/ui/auth/auth_view.dart';
import 'package:sidekick/ui/on_boarding/on_boarding_view.dart';
import 'package:sidekick/ui/register/register_account_view.dart';
import 'package:sidekick/ui/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView, initial: true),
    CupertinoRoute(page: AuthView),
    CupertinoRoute(page: OnBoardingView),
    CupertinoRoute(page: AddressSelectionView),
    CupertinoRoute(page: RegisterAccountView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: UserService),
    LazySingleton(classType: FirestoreApi),
    Singleton(classType: FirebaseAuthenticationService),
  ],
  logger: StackedLogger(),
)
class AppSetup {}
