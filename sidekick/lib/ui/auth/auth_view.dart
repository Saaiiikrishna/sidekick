import 'package:flutter/material.dart';
import 'package:sidekick/ui/auth/auth_view.form.dart';
import 'package:sidekick/ui/auth/auth_viewmodel.dart';
import 'package:sidekick/ui/screens/auth_screen.dart';
import 'package:sidekick/ui/screens/utils.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
])
class AuthView extends StatelessWidget with $AuthView {
  AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => Scaffold(
        backgroundColor: skBackGround,
        body: SafeArea(
          child: AuthLayout(
            busy: model.isBusy,
            onMainButtonTapped: model.saveData,
            onCreateAccountTapped: model.navigateToCreateAccount,
            validationMessage: model.validationMessage,
            onSignInWithGoogle: model.useGoogleAuthentication,
            onSignInWithApple: model.useAppleAuthentication,
            form: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                  child: Text(
                    'Enter email and password to login',
                    style: TextStyle(color: Colors.white60),
                  ),
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white30),
                  ),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white30),
                  ),
                  controller: passwordController,
                ),
              ],
            ),
            onForgotPassword: () {},
          ),
        ),
      ),
      viewModelBuilder: () => AuthViewModel(),
    );
  }
}
