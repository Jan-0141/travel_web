import 'package:flutter/material.dart';
import 'package:travel_web/page/create_user/create_user_page.dart';

import 'page/login/login_page.dart';

class AppRoutes {
  static const createuser = '/createuser';
  static const home = '/';
  static const login = '/login';
  static const profile = '/profile';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case home:
      //   return MaterialPageRoute(builder: (_) => const HomePage());

      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case createuser:
        return MaterialPageRoute(builder: (_) => const CreteUserPage());

      // case profile:
      //   // ตัวอย่างส่ง argument
      //   final userId = settings.arguments as String?;
      //   return MaterialPageRoute(builder: (_) => ProfilePage(userId: userId));

      default:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
    }
  }
}
