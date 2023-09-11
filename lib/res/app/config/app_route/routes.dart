import 'package:food_ordering/res/app/config/app_route/routes_names.dart';
import 'package:food_ordering/res/screens/auth/forget_password.dart';
import 'package:food_ordering/res/screens/auth/sign_up_page.dart';
import 'package:food_ordering/res/screens/onboarding/onboarding_page.dart';
import 'package:food_ordering/res/screens/splash/splash_page.dart';
import 'package:get/get.dart';

import '../../../screens/auth/auth_page.dart';
import '../../../screens/auth/login_page.dart';
import '../../../screens/auth/otp_verify_page.dart';
import '../../../screens/auth/reset_password.dart';
import '../../../screens/home/home_page.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: RouteNames.splash, page: () => const SplashScreen()),
    GetPage(name: RouteNames.onboarding, page: () => const OnBoardingPage()),
    GetPage(name: RouteNames.auth, page: () => const AuthPage()),
    GetPage(name: RouteNames.home, page: () => const HomePage()),
    GetPage(name: RouteNames.login, page: () => const LoginScreen()),
    GetPage(name: RouteNames.register, page: () => const SignUpPage()),
    GetPage(
        name: RouteNames.forgotPassword, page: () => const ForgetPassword()),
    GetPage(name: RouteNames.otpVerify, page: () => OTPVerifyPage()),
    GetPage(
        name: RouteNames.resetPassword, page: () => const ResetPasswordPage()),
  ];
}
