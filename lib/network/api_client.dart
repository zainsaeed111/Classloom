import 'package:classloom/base/base_response.dart';
import 'package:classloom/models/requests/user_request.dart';
import 'package:classloom/models/responses/authresponse.dart';
import 'package:classloom/utills/api_endpoints.dart';
import 'package:classloom/utills/constants.dart';
import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio=Dio()
  ..options=BaseOptions(
    baseUrl: Constants.apiBaseUrl,
    connectTimeout: Duration(milliseconds: 5000),
    receiveTimeout: Duration(milliseconds: 3000),
  );
  
  Future<BaseResponse<Authresponse>> register(UserRegisterRequest request) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.register(),
        data: request.toJson(),
      );
      return BaseResponse<Authresponse>.fromJson(
        response.data,
        (json) => Authresponse.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw Exception('Failed to register: ${e.message}');
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  } 
  
}