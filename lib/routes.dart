import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/trilhas_page.dart';

class AppRoutes {
  static const String login = '/';
  static const String home = '/home';
  static const String trilhas = '/trilhas';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case trilhas:
        final args = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => TrilhasPage(trilha: args));
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Página não encontrada')),
          ),
        );
    }
  }
}
