import 'package:flutter/material.dart';
import 'screens/auth_screen.dart';
import 'screens/webview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Новости',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthScreen(),
        '/webview': (context) => const WebviewScreen(),
      },
    );
  }
}
