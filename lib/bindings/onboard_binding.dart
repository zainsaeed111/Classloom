
import 'package:classloom/view_models/onborad_viewmodel.dart';
import 'package:get/get.dart';

class OnboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => OnboradViewmodel());
  }
}