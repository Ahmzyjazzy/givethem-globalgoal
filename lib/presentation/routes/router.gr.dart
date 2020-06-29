// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:givethem/presentation/splash/splash_page.dart';
import 'package:givethem/presentation/welcome/welcome_page.dart';
import 'package:givethem/presentation/sign_in/sign_in_page.dart';
import 'package:givethem/presentation/sign_up/sign_up_page.dart';
import 'package:givethem/presentation/goals/goals_page.dart';
import 'package:givethem/presentation/donate/donate_page.dart';
import 'package:givethem/presentation/audit/audit_page.dart';
import 'package:givethem/presentation/settings/settings_page.dart';

abstract class Routes {
  static const splashPage = '/';
  static const welcomePage = '/welcome-page';
  static const signInPage = '/sign-in-page';
  static const signUpPage = '/sign-up-page';
  static const goalsPage = '/goals-page';
  static const donatePage = '/donate-page';
  static const auditPage = '/audit-page';
  static const settingsPage = '/settings-page';
  static const all = {
    splashPage,
    welcomePage,
    signInPage,
    signUpPage,
    goalsPage,
    donatePage,
    auditPage,
    settingsPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(),
          settings: settings,
        );
      case Routes.welcomePage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => WelcomePage(),
          settings: settings,
        );
      case Routes.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInPage(),
          settings: settings,
        );
      case Routes.signUpPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignUpPage(),
          settings: settings,
        );
      case Routes.goalsPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => GoalsPage(),
          settings: settings,
        );
      case Routes.donatePage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => DonatePage(),
          settings: settings,
        );
      case Routes.auditPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => AuditPage(),
          settings: settings,
        );
      case Routes.settingsPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SettingsPage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSplashPage() => pushNamed(Routes.splashPage);

  Future pushWelcomePage() => pushNamed(Routes.welcomePage);

  Future pushSignInPage() => pushNamed(Routes.signInPage);

  Future pushSignUpPage() => pushNamed(Routes.signUpPage);

  Future pushGoalsPage() => pushNamed(Routes.goalsPage);

  Future pushDonatePage() => pushNamed(Routes.donatePage);

  Future pushAuditPage() => pushNamed(Routes.auditPage);

  Future pushSettingsPage() => pushNamed(Routes.settingsPage);
}
