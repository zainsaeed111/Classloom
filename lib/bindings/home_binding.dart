
import 'package:classloom/controllers/bottom_nav_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController());
  }
}