import 'package:flutter/cupertino.dart';
import 'package:splash_screen/models/post_model.dart';
import 'package:splash_screen/repositories/home_repository.dart';

class HomeController {
  final HomeRepository _homeRepository;

  HomeController(this._homeRepository);
  ValueNotifier<List<Post>> posts = ValueNotifier<List<Post>>([]);

  fetch() async {
    posts.value = await _homeRepository.getList();
  }
}
