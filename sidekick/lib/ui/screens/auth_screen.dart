import 'dart:io';

import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';

class AuthLayout extends StatelessWidget {
  final Widget? form;
  final bool showTermsText;
  final void Function()? onMainButtonTapped;
  final void Function()? onCreateAccountTapped;
  final void Function()? onForgotPassword;
  final void Function()? onSignInWithApple;
  final void Function()? onSignInWithGoogle;
  final String? validationMessage;
  final String? subtitle;
  final String? googleLogIn;
  final String? appleLogin;
  final String? mainButtonTitle;
  final bool busy;

  const AuthLayout({
    Key? key,
    this.form,
    this.onMainButtonTapped,
    this.onCreateAccountTapped,
    this.onForgotPassword,
    this.onSignInWithApple,
    this.onSignInWithGoogle,
    this.validationMessage,
    this.subtitle,
    this.mainButtonTitle,
    this.showTermsText = false,
    this.busy = false,
    this.googleLogIn,
    this.appleLogin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'S',
                            style: TextStyle(
                              fontSize: 56,
                            ),
                          ),
                          TextSpan(
                            text: 'idekick',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(text: subtitle!),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RotatedBox(
                      quarterTurns: 1,
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            color: Color.fromARGB(255, 62, 56, 56),
                            letterSpacing: 3,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'P',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'LAY',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            TextSpan(
                              text: ' B',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'ETTER',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            TextSpan(
                              text: ' G',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'AME',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            form!,
            if (onForgotPassword != null)
              Align(
                heightFactor: 3,
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: onForgotPassword,
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            if (validationMessage != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  validationMessage!,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                  ),
                ),
              ),
            if (showTermsText)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "By registering, you are agreeing all our terms, conditions and privacy policy.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 9.5,
                  ),
                ),
              ),
            GestureDetector(
              onTap: onMainButtonTapped,
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: busy
                    ? const CircularProgressIndicator.adaptive(
                        valueColor: AlwaysStoppedAnimation(Colors.black),
                      )
                    : Text(
                        mainButtonTitle!,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            if (Platform.isIOS)
              Column(
                children: [
                  AppleAuthButton(
                    onPressed: onSignInWithApple ?? () {},
                    // darkMode: true,
                    text: appleLogin!,
                    style: const AuthButtonStyle(
                      buttonColor: Colors.white,
                      iconSize: 20,
                      height: 50,
                      width: double.infinity,
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      buttonType: AuthButtonType.secondary,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            GoogleAuthButton(
              onPressed: onSignInWithGoogle ?? () {},
              text: googleLogIn!,
              style: const AuthButtonStyle(
                buttonColor: Colors.white,
                iconSize: 20,
                iconBackground: Colors.white,
                width: double.infinity,
                height: 50,
                textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            if (onCreateAccountTapped != null)
              GestureDetector(
                onTap: onCreateAccountTapped,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.white60,
                      ),
                    ),
                    Text(
                      ' Create an account',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
