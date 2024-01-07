import 'package:flutter/material.dart';
import 'package:screens_124/presentation/login_page_screen/login_page_screen.dart';
import 'package:screens_124/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:screens_124/presentation/register_page_screen/register_page_screen.dart';
import 'package:screens_124/presentation/home_page_screen/home_page_screen.dart';
import 'package:screens_124/presentation/splasg_screen/splasg_screen.dart';
import 'package:screens_124/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginPageScreen = '/login_page_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String registerPageScreen = '/register_page_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String splasgScreen = '/splasg_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginPageScreen: (context) => LoginPageScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    registerPageScreen: (context) => RegisterPageScreen(),
    homePageScreen: (context) => HomePageScreen(),
    splasgScreen: (context) => SplasgScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
