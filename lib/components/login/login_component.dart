import 'package:flutter/material.dart';

import '../../controllers/login_controller.dart';

class LoginComponent extends StatelessWidget {
  final LoginController loginController;
  const LoginComponent({Key? key, required this.loginController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.inLoader,
      builder: (_, inLoader, __) => inLoader
          ? CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                loginController.auth().then(
                  (result) {
                    if (result) {
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Usuário ou senha incorreta!'),
                          duration: Duration(seconds: 4),
                        ),
                      );
                    }
                  },
                );
              },
              child: Text("Login"),
            ),
    );
  }
}
