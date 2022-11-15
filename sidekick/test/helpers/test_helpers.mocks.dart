// Mocks generated by Mockito 5.3.0 from annotations
// in sidekick/test/helpers/test_helpers.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:flutter/material.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:sidekick/models/application_models.dart' as _i2;
import 'package:sidekick/services/user_service.dart' as _i3;
import 'package:stacked_services/stacked_services.dart' as _i5;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeUser_0 extends _i1.SmartFake implements _i2.User {
  _FakeUser_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [UserService].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserService extends _i1.Mock implements _i3.UserService {
  @override
  _i2.User get currentUser => (super.noSuchMethod(
        Invocation.getter(#currentUser),
        returnValue: _FakeUser_0(
          this,
          Invocation.getter(#currentUser),
        ),
      ) as _i2.User);
  @override
  bool get hasLoggedInUser => (super.noSuchMethod(
        Invocation.getter(#hasLoggedInUser),
        returnValue: false,
      ) as bool);
  @override
  _i4.Future<void> syncUserAccount() => (super.noSuchMethod(
        Invocation.method(
          #syncUserAccount,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> syncOrCreateUserAccount({_i2.User? user}) =>
      (super.noSuchMethod(
        Invocation.method(
          #syncOrCreateUserAccount,
          [],
          {#user: user},
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [NavigationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNavigationService extends _i1.Mock implements _i5.NavigationService {
  @override
  String get previousRoute => (super.noSuchMethod(
        Invocation.getter(#previousRoute),
        returnValue: '',
      ) as String);
  @override
  String get currentRoute => (super.noSuchMethod(
        Invocation.getter(#currentRoute),
        returnValue: '',
      ) as String);
  @override
  _i6.GlobalKey<_i6.NavigatorState>? nestedNavigationKey(int? index) =>
      (super.noSuchMethod(Invocation.method(
        #nestedNavigationKey,
        [index],
      )) as _i6.GlobalKey<_i6.NavigatorState>?);
  @override
  void config({
    bool? enableLog,
    bool? defaultPopGesture,
    bool? defaultOpaqueRoute,
    Duration? defaultDurationTransition,
    bool? defaultGlobalState,
    _i5.Transition? defaultTransitionStyle,
    String? defaultTransition,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #config,
          [],
          {
            #enableLog: enableLog,
            #defaultPopGesture: defaultPopGesture,
            #defaultOpaqueRoute: defaultOpaqueRoute,
            #defaultDurationTransition: defaultDurationTransition,
            #defaultGlobalState: defaultGlobalState,
            #defaultTransitionStyle: defaultTransitionStyle,
            #defaultTransition: defaultTransition,
          },
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<T?>? navigateWithTransition<T>(
    _i6.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i6.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i5.Transition? transitionClass,
    _i5.Transition? transitionStyle,
  }) =>
      (super.noSuchMethod(Invocation.method(
        #navigateWithTransition,
        [page],
        {
          #opaque: opaque,
          #transition: transition,
          #duration: duration,
          #popGesture: popGesture,
          #id: id,
          #curve: curve,
          #fullscreenDialog: fullscreenDialog,
          #preventDuplicates: preventDuplicates,
          #transitionClass: transitionClass,
          #transitionStyle: transitionStyle,
        },
      )) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? replaceWithTransition<T>(
    _i6.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i6.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i5.Transition? transitionClass,
    _i5.Transition? transitionStyle,
  }) =>
      (super.noSuchMethod(Invocation.method(
        #replaceWithTransition,
        [page],
        {
          #opaque: opaque,
          #transition: transition,
          #duration: duration,
          #popGesture: popGesture,
          #id: id,
          #curve: curve,
          #fullscreenDialog: fullscreenDialog,
          #preventDuplicates: preventDuplicates,
          #transitionClass: transitionClass,
          #transitionStyle: transitionStyle,
        },
      )) as _i4.Future<T?>?);
  @override
  bool back<T>({
    dynamic result,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #back,
          [],
          {
            #result: result,
            #id: id,
          },
        ),
        returnValue: false,
      ) as bool);
  @override
  void popUntil(_i6.RoutePredicate? predicate) => super.noSuchMethod(
        Invocation.method(
          #popUntil,
          [predicate],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void popRepeated(int? popTimes) => super.noSuchMethod(
        Invocation.method(
          #popRepeated,
          [popTimes],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<T?>? navigateTo<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i6.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(Invocation.method(
        #navigateTo,
        [routeName],
        {
          #arguments: arguments,
          #id: id,
          #preventDuplicates: preventDuplicates,
          #parameters: parameters,
          #transition: transition,
        },
      )) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? navigateToView<T>(
    _i6.Widget? view, {
    dynamic arguments,
    int? id,
    bool? opaque,
    _i6.Curve? curve,
    Duration? duration,
    bool? fullscreenDialog = false,
    bool? popGesture,
    bool? preventDuplicates = true,
    _i5.Transition? transition,
    _i5.Transition? transitionStyle,
  }) =>
      (super.noSuchMethod(Invocation.method(
        #navigateToView,
        [view],
        {
          #arguments: arguments,
          #id: id,
          #opaque: opaque,
          #curve: curve,
          #duration: duration,
          #fullscreenDialog: fullscreenDialog,
          #popGesture: popGesture,
          #preventDuplicates: preventDuplicates,
          #transition: transition,
          #transitionStyle: transitionStyle,
        },
      )) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? replaceWith<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(Invocation.method(
        #replaceWith,
        [routeName],
        {
          #arguments: arguments,
          #id: id,
          #preventDuplicates: preventDuplicates,
          #parameters: parameters,
        },
      )) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? clearStackAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(Invocation.method(
        #clearStackAndShow,
        [routeName],
        {
          #arguments: arguments,
          #id: id,
          #parameters: parameters,
        },
      )) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? clearStackAndShowView<T>(
    _i6.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(Invocation.method(
        #clearStackAndShowView,
        [view],
        {
          #arguments: arguments,
          #id: id,
        },
      )) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? clearTillFirstAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(Invocation.method(
        #clearTillFirstAndShow,
        [routeName],
        {
          #arguments: arguments,
          #id: id,
          #preventDuplicates: preventDuplicates,
          #parameters: parameters,
        },
      )) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? clearTillFirstAndShowView<T>(
    _i6.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(Invocation.method(
        #clearTillFirstAndShowView,
        [view],
        {
          #arguments: arguments,
          #id: id,
        },
      )) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? pushNamedAndRemoveUntil<T>(
    String? routeName, {
    _i6.RoutePredicate? predicate,
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(Invocation.method(
        #pushNamedAndRemoveUntil,
        [routeName],
        {
          #predicate: predicate,
          #arguments: arguments,
          #id: id,
        },
      )) as _i4.Future<T?>?);
}
