import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  void _authenticate(BuildContext context) async {
    // TODO: Здесь будет биометрическая проверка
    // Пока просто переходим на WebView после "успешной" авторизации
    Navigator.of(context).pushReplacementNamed('/webview');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: Center(
        child: ElevatedButton(
          onPressed: () => _authenticate(context),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            backgroundColor: Colors.blueAccent,
          ),
          child: const Text(
            'Войти с биометрией',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
