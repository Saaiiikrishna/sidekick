// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/address_selection/address_selection_view.dart';
import '../ui/auth/auth_view.dart';
import '../ui/on_boarding/on_boarding_view.dart';
import '../ui/register/register_account_view.dart';
import '../ui/startup/startup_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String authView = '/auth-view';
  static const String onBoardingView = '/on-boarding-view';
  static const String addressSelectionView = '/address-selection-view';
  static const String registerAccountView = '/register-account-view';
  static const all = <String>{
    startUpView,
    authView,
    onBoardingView,
    addressSelectionView,
    registerAccountView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.authView, page: AuthView),
    RouteDef(Routes.onBoardingView, page: OnBoardingView),
    RouteDef(Routes.addressSelectionView, page: AddressSelectionView),
    RouteDef(Routes.registerAccountView, page: RegisterAccountView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartUpView(),
        settings: data,
      );
    },
    AuthView: (data) {
      var args = data.getArgs<AuthViewArguments>(
        orElse: () => AuthViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AuthView(key: args.key),
        settings: data,
      );
    },
    OnBoardingView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const OnBoardingView(),
        settings: data,
      );
    },
    AddressSelectionView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const AddressSelectionView(),
        settings: data,
      );
    },
    RegisterAccountView: (data) {
      var args = data.getArgs<RegisterAccountViewArguments>(
        orElse: () => RegisterAccountViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => RegisterAccountView(key: args.key),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// AuthView arguments holder class
class AuthViewArguments {
  final Key? key;
  AuthViewArguments({this.key});
}

/// RegisterAccountView arguments holder class
class RegisterAccountViewArguments {
  final Key? key;
  RegisterAccountViewArguments({this.key});
}
