import 'package:flutter/material.dart';
import 'auth.dart';
import 'tasks.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Accueil")),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            User? user = await _authService.signInWithGoogle();
            if (user != null) {
              Navigator.pushNamed(context, '/tasks'); // Rediriger vers la page des tâches
            }
          },
          child: Text('Se connecter avec Google'),
        ),
      ),
    );
  }
}
