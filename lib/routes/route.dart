import 'package:get/get.dart';
import 'package:royal_property/ui/views/onboarding_screen.dart';
import 'package:royal_property/ui/views/splash_screen.dart';

import '../ui/views/login_screen.dart';
import '../ui/views/signup_button.dart';

const String splash = "/splash-screen";
const String onboarding = "/onboarding-screen";
const String signup = "/signup-screen";
const String login = "/login-screen";

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: onboarding,
    page: () => OnBoardingScreen(),
  ),
  GetPage(
    name: signup,
    page: () => SignUpScreen(),
  ),
  GetPage(
    name: login,
    page: () => LogInScreen(),
  ),
];
