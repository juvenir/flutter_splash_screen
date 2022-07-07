import 'package:flutter/material.dart';
import 'package:splash_screen/components/login/login_component.dart';
import 'package:splash_screen/controllers/login_controller.dart';

import '../widgets/custom_text_field_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  LoginController _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(40.0),
      child: Center(
        child: Container(
          height: 568,
          width: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.people,
                size: 100,
                color: Color(0xff048CF8),
              ),
              CustomTextFieldWidget(
                textInputAction: TextInputAction.next,
                label: 'login',
                onChanged: _controller.setLogin,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFieldWidget(
                textInputAction: TextInputAction.done,
                label: 'pass',
                onChanged: _controller.setPass,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  _controller.inLoader;
                },
                child: Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
