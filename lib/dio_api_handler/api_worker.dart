import 'dart:developer';
import 'package:dio/dio.dart';
import 'api_constants.dart';
import 'dio_client.dart';

class ApiWorker with ApiConstants {
  late DioClient dio;

  ApiWorker() {
    dio = DioClient();
  }

/*  Future<SignupResponse> signUp(SignupRequest signupRequest) async {
    var url = Uri.parse(ApiConstants.signUp);
    print(' >Url>>> $url');
    final response = await dio
        .postbycustom(
        url.toString(),
        data: signupRequest,
        options: Options(
            headers: {
              'Content-Type': 'application/json',
            }
        )
    ).onError((DioException error, stackTrace) {
      log(error.toString());
      return Future.error(throw DioExceptionHandler.fromDioError(error));
    });
    return SignupResponse.fromJson(response.data);
  }

  Future<LoginResponse> login(LoginRequest loginRequest) async {
    var url = Uri.parse(ApiConstants.login);
    print(' >Url>>> $url');
    final response = await dio
        .postbycustom(
        url.toString(),
        data: loginRequest,
        options: Options(
            headers: {
              'Content-Type': 'application/json',
            }
        )
    ).onError((DioException error, stackTrace) {
      log(error.toString());
      return Future.error(throw DioExceptionHandler.fromDioError(error));
    });
    return LoginResponse.fromJson(response.data);
  }*/

}
