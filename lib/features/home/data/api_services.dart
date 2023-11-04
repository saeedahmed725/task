import 'package:dio/dio.dart';
import 'package:task/features/home/data/user_model.dart';

class ApiServices {
  String baseUrl = 'https://jsonplaceholder.typicode.com/users';
  Dio dio = Dio();

  Future<List<UserModel>> getUsers() async {
    List<UserModel> users = [];
    Response response = await dio.get(baseUrl);
    for (var user in response.data) {
      UserModel userModel = UserModel.fromJson(user);
      users.add(userModel);
    }
    return users;
  }
}
