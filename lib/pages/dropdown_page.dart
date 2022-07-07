import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splash_screen/controllers/home_controller.dart';
import 'package:splash_screen/models/post_model.dart';
import 'package:splash_screen/repositories/home_repository_mock.dart';

class DropdownPage extends StatefulWidget {
  DropdownPage({Key? key}) : super(key: key);

  @override
  State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  final HomeController _controller = HomeController(HomeRepositoryMock());

  @override
  void initState() {
    super.initState();
    dropOpcoes;
    print(dropOpcoes.then((value) {
      value.map((e) => e);
    }));
  }

  final dropValue = ValueNotifier('');

  final Future<List> dropOpcoes = () async {
    var value = await rootBundle.loadString('assets/data.json');
    List postJson = jsonDecode(value);
    return postJson.map((e) => Post.fromJson(e)).toList();
  }()
      .then((value) => value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ValueListenableBuilder(
        valueListenable: dropValue,
        builder: (context, String value, _) {
          return SizedBox(
            width: 200,
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              )),
              isExpanded: true,
              hint: Text('select'),
              value: (value.isEmpty) ? null : value,
              onChanged: (escolha) => dropValue.value = escolha.toString(),
              items: [],
            ),
          );
        },
      )),
    );
  }
}
