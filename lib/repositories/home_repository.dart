import 'package:splash_screen/models/post_model.dart';

abstract class HomeRepository {
  Future<List<Post>> getList();
}
