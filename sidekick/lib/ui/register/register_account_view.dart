import 'package:flutter/material.dart';
import 'package:sidekick/ui/register/register_account_view.form.dart';
import 'package:sidekick/ui/screens/auth_screen.dart';
import 'package:sidekick/ui/screens/utils.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'register_account_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'fullName'),
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
])
class RegisterAccountView extends StatelessWidget with $RegisterAccountView {
  RegisterAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterAccountViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => Scaffold(
        backgroundColor: skBackGround,
        body: SafeArea(
          child: AuthLayout(
            busy: model.isBusy,
            onMainButtonTapped: model.saveData,
            validationMessage: model.validationMessage,
            form: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(labelText: 'Full Name'),
                  controller: fullNameController,
                ),
                TextField(
                  decoration: const InputDecoration(labelText: 'Email'),
                  controller: emailController,
                ),
                TextField(
                  decoration: const InputDecoration(labelText: 'Password'),
                  controller: passwordController,
                ),
              ],
            ),
            showTermsText: true,
          ),
        ),
      ),
      viewModelBuilder: () => RegisterAccountViewModel(),
    );
  }
}
