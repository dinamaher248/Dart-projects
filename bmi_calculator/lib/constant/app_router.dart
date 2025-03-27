import 'package:bmi_calculator/BMI_screen.dart';
import 'package:bmi_calculator/BMI_screen2.dart';
import 'package:bmi_calculator/calculator_numbers.dart';
import 'package:bmi_calculator/login.dart';
import 'package:go_router/go_router.dart';

import '../BottomNavigation.dart';

class AppRouter {
  static String bmiscreenPath = '/bmiscreenPath';
  static String bmiscreen2Path = '/bmiscreen2Path';
  static String NavigatorPath = '/NavigatorPath';
  static String calculatorPath = '/calculatorPath';
  static String loginPath = '/loginPath';
  static String registerPath = '/registerPath';
  static String forgetPasswordWithPhone = '/forgetPasswordWithPhone';
  static String forgetPasswordWithMail = '/forgetPasswordWithMail';
  static String verifyCodeWithPhone = '/verifyCodeWithPhone';
  static String verifyCodeWithMail = '/verifyCodeWithMail';
  static String confirmationNewPass = '/confirmationNewPass';
  static String searchNotFoundPage = '/searchNotFoundPage';
  static String successOrderPage = '/successOrderPage';
  static String cartEmpty = '/cartEmpty';
  static GoRouter router = GoRouter(
    initialLocation: '/bmiscreenPath',
    routes: [
      GoRoute(
        path: bmiscreenPath,
        builder: (context, state) => const BMIScreen(),
      ),
      GoRoute(
        path: bmiscreen2Path,
        builder: (context, state) => const BMIScreen2(),
      ),
      GoRoute(
        path: calculatorPath,
        builder: (context, state) => const CalculatorNumbers(),
      ),
      GoRoute(
        path: NavigatorPath,
        builder: (context, state) => const Bottomnavigation(),
      ),
      GoRoute(
        path: loginPath,
        builder: (context, state) =>  Login(),
      ),
    ],
  );
}
