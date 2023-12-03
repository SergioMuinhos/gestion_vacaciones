import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'auth_provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Implementa el inicio de sesión con Firebase
            await authProvider.signInWithEmailAndPassword(
                'test@example.com', 'password123');
          },
          child: Text('Iniciar sesión'),
        ),
      ),
    );
  }
}
