import 'package:flutter/material.dart';

// Navigation
// import 'home.dart';
import 'RegisterScreen.dart';
import 'WelcomeScreen.dart';
import 'LoginScreen.dart';
import 'HomeScreen.dart';
import 'UserScreen.dart';

// Firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/register': (context) => const RegisterPage(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const UserScreen(),
        // '/user': (context) => const UserScreen(),
      },
    );
  }
}