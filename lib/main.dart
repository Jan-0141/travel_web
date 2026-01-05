import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_web/provider/auth_provider.dart';
import 'package:travel_web/provider/user_provider.dart';

import 'app_routes.dart';
import 'page/login/login_page.dart';
import 'theme/app_theme.dart';

void main() {
  //   runApp(
  //   MultiProvider(
  //     providers: [
  //       ChangeNotifierProvider(create: (_) => AuthProvider()),
  //       ChangeNotifierProvider(create: (_) => UserProvider()),
  //     ],
  //     child: const MyApp(),
  //   ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
    // return MaterialApp(
    //   theme: AppTheme.lightTheme,
    //   debugShowCheckedModeBanner: false,
    //   home: const LoginPage(),
    // );
  }
}
