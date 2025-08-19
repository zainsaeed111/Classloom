import 'package:classloom/models/onboarding_model.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboradController extends GetxController{
  var currentPageIndex=0.obs;
  late PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }
  @override
  onClose() {
    pageController.dispose();
    super.onClose();
  }

  
 List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      onboardTitle: "Welcome to Classloom",
      onboardSubtitle:
          "Your ultimate platform for seamless learning, offering a comprehensive solution for all your educational needs and goals",
      onboardImage: "assets/svgs/example_svg.svg",
    ),
    OnBoardingModel(
      onboardTitle: "Explore Courses",
      onboardSubtitle:
          "Discover a diverse range of courses meticulously tailored to align with your unique learning aspirations and personal interests",
      onboardImage: "assets/svgs/classloomlogosvg500.svg",
    ),
    OnBoardingModel(
      onboardTitle: "Proper Access",
      onboardSubtitle:
          "Gain exclusive access to premium courses carefully designed to empower you with knowledge and skills for success",
      onboardImage: "assets/svgs/example_svg.svg",
    ),
 ];

 void updatePageIndex(){
  if(currentPageIndex.value<onBoardingList.length-1){
    currentPageIndex.value++;
        pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );  }else{
    finishOnBoarding();
  }
 }

 void skipOnboarding(){
  Get.offAndToNamed('/auth');
 }
 void onPageChanged(int index){
  currentPageIndex.value=index;
 }

 void finishOnBoarding(){
  GetStorage().write('seen_onboarding', true);
  Get.offAllNamed('/auth');
 }


}