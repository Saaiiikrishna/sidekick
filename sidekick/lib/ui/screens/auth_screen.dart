import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final Widget? form;
  final bool showTermsText;
  final void Function()? onMainButtonTapped;
  final void Function()? onCreateAccountTapped;
  final void Function()? onForgotPassword;
  final void Function()? onSignInWithApple;
  final void Function()? onSignInWithGoogle;
  final String? validationMessage;
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
    this.showTermsText = true,
    this.busy = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
              //       if (onForgotPassword != null)
              //         Align(
              //           alignment: Alignment.centerRight,
              //           child: GestureDetector(
              //             onTap: onForgotPassword,
              //             child: const Text(
              //               'Forgot Password?',
              //             ),
              //           ),
              //         ),
              //       if (validationMessage != null)
              //         Text(
              //           validationMessage!,
              //           style: const TextStyle(
              //             color: Colors.red,
              //             fontSize: skBodyTextSize,
              //           ),
              //         ),
              //       if (validationMessage != null) const SizedBox(width: 18.0),
              //       GestureDetector(
              //         onTap: onMainButtonTapped,
              //         child: Container(
              //           width: double.infinity,
              //           height: 50,
              //           alignment: Alignment.center,
              //           decoration: BoxDecoration(
              //             color: skForeGround,
              //             borderRadius: BorderRadius.circular(8),
              //           ),
              //           child: busy
              //               ? const CircularProgressIndicator.adaptive(
              //                   valueColor: AlwaysStoppedAnimation(Colors.white),
              //                 )
              //               : Text(
              //                   mainButtonTitle!,
              //                   style: const TextStyle(
              //                     color: Colors.white,
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 14,
              //                   ),
              //                 ),
              //         ),
              //       ),
              //       if (onCreateAccountTapped != null)
              //         GestureDetector(
              //             onTap: onCreateAccountTapped,
              //             child: Row(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: const [
              //                 Text("Don't have an account?"),
              //                 Text(
              //                   'Create an account',
              //                   style: TextStyle(
              //                     color: skSecondaryText,
              //                   ),
              //                 ),
              //               ],
              //             )),
              //       if (showTermsText)
              //         const Text(
              //           'By signing up you agree to our terms, conditions and privacy policy.',
              //           textAlign: TextAlign.center,
              //           style: TextStyle(
              //             color: skSecondaryText,
              //           ),
              //         ),
              //       const Align(
              //           alignment: Alignment.center,
              //           child: Text(
              //             'Or',
              //           )),
              //       if (Platform.isIOS)
              //         AppleAuthButton(
              //           onPressed: onSignInWithApple ?? () {},
              //           // darkMode: true,
              //           text: 'CONTINUE WITH APPLE',
              //           style: const AuthButtonStyle(
              //             iconSize: 24,
              //             height: 50,
              //             textStyle: TextStyle(color: Colors.white),
              //             buttonType: AuthButtonType.secondary,
              //           ),
              //         ),
              //       GoogleAuthButton(
              //         onPressed: onSignInWithGoogle ?? () {},
              //         text: 'CONTINUE WITH GOOGLE',
              //         style: const AuthButtonStyle(
              //           buttonColor: Color(0xff4285F4),
              //           iconSize: 24,
              //           iconBackground: Colors.white,
              //           buttonType: AuthButtonType.secondary,
              //           height: 50,
              //           textStyle: TextStyle(color: Colors.white),
              //         ),
              //       )
            ],
          ),
          form!,
        ],
      ),
    );
  }
}
