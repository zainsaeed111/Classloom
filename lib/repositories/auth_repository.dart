import 'package:classloom/base/base_response.dart';
import 'package:classloom/models/requests/user_request.dart';
import 'package:classloom/models/responses/authresponse.dart';
import 'package:classloom/network/api_client.dart';

class AuthRepository {
  final ApiClient _apiClient=ApiClient();


  Future<BaseResponse<Authresponse>>register(UserRegisterRequest request) async{
    try {
      return await _apiClient.register(request);
    } catch (e) {
      throw Exception('Registration failed: $e');
    }
  }
}