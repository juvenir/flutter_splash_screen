import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3))
        .then((_) => Navigator.of(context).pushReplacementNamed('/login'));
    // o void initstate nao pode usar async entao colocamos o .then,
    //usamos o pushreplacementnamed para o usuario nao ter opçao de volar
    //para pagina de reflesh e fica somete na page login.
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff048CF8),
      child: Center(
          child: CircularProgressIndicator(
        color: Colors.white,
      )),
    );
  }
}
