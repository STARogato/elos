import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Importações das páginas existentes
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/home_page.dart';

// Importações para criar depois (templates prontos abaixo)
// import 'pages/desafios_page.dart';
// import 'pages/perfil_page.dart';
// import 'pages/empresas_page.dart';
// import 'pages/mentores_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ElosApp());
}

class ElosApp extends StatelessWidget {
  const ElosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const LoginPage(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        // '/trilhas': (context) => const TrilhasPage(),
        // '/desafios': (context) => const DesafiosPage(),
        // '/perfil': (context) => const PerfilPage(),
        // '/empresas': (context) => const EmpresasPage(),
        // '/mentores': (context) => const MentoresPage(),
      },
    );
  }
}
