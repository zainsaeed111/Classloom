import 'package:classloom/repositories/auth_repository.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
    final AuthRepository _authRepository = AuthRepository();
    final _isLoading = false.obs;
    // final _errorMessage=Rx(initial)


}