import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task/core/failure/failure.dart';
import 'package:task/features/home/data/user_model.dart';

class ApiServices {
  String baseUrl = 'https://jsonplaceholder.typicode.com/users';
  Dio dio = Dio();

  Future<Either<Failure, List<UserModel>>> getUsers() async {
    try {
      List<UserModel> users = [];
      Response response = await dio.get(baseUrl);
      for (var user in response.data) {
        UserModel userModel = UserModel.fromJson(user);
        users.add(userModel);
      }
      return right(users);
    }  on DioException catch (err) {
      return left(NetworkFailure.fromDioError(err));
    }
  }
}
