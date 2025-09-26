import 'package:get/get.dart';

class BottomNavController extends GetxController{
  var selectedBottomTab=0.obs;

  void onBottomTabSelection(int index){
    selectedBottomTab.value=index;
  }

}