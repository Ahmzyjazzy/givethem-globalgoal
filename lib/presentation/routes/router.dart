import 'package:auto_route/auto_route_annotations.dart';
import 'package:givethem/presentation/audit/audit_page.dart';
import 'package:givethem/presentation/donate/donate_page.dart';
import 'package:givethem/presentation/goals/goals_page.dart';
import 'package:givethem/presentation/settings/settings_page.dart';
import 'package:givethem/presentation/sign_in/sign_in_page.dart';
import 'package:givethem/presentation/sign_up/sign_up_page.dart';
import 'package:givethem/presentation/splash/splash_page.dart';
import 'package:givethem/presentation/welcome/welcome_page.dart';
import 'package:givethem/presentation/goals_detail/goal_detail_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  SplashPage splashPage;
  WelcomePage welcomePage;
  SignInPage signInPage;
  SignUpPage signUpPage;
  GoalsPage goalsPage;
  GoalDetailWebview goalDetailWebview;
  DonatePage donatePage;
  AuditPage auditPage;
  SettingsPage settingsPage;
}
