import 'package:classloom/common/custom_button.dart';
import 'package:classloom/common/custom_text.dart';
import 'package:classloom/core/contsants/app_colors.dart' as app_colors;
import 'package:classloom/view_models/onborad_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class OnboardScreen extends StatelessWidget {
  final onboardVm = Get.put(OnboradViewmodel());
  final pagerContoller = PageController();

  OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: onboardVm.finishOnBoarding,
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                    backgroundColor: app_colors.primaryColor,
                  ),
                  child: CustomText(
                    'Skip',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: PageView.builder(
                  controller: pagerContoller,
                  onPageChanged: onboardVm.onPageChanged,
                  itemCount: onboardVm.onBoardingList.length,
                  itemBuilder: (_, index) {
                    final onboardItem = onboardVm.onBoardingList[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            onboardItem.onboardImage,
                            width: 200,
                            height: 250,
                          ),
                          SizedBox(height: 20),
                          CustomText(
                            onboardItem.onboardTitle,
                            textAlign: TextAlign.center,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: app_colors.primaryColor,
                          ),
                          SizedBox(height: 10),
                          CustomText(
                            onboardItem.onboardSubtitle,
                            textAlign: TextAlign.center,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      onboardVm.onBoardingList.length,
                      (index) => AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: onboardVm.currentPageIndex.value == index
                            ? 20
                            : 8,
                        margin: EdgeInsets.all(4),
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: onboardVm.currentPageIndex.value == index
                              ? app_colors.primaryColor
                              : Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Obx(
                () => CustomButton(
                  buttonText:
                      onboardVm.currentPageIndex.value ==
                          onboardVm.onBoardingList.length - 1
                      ? "Start"
                      : "Next",
                  buttonGradeient: const LinearGradient(
                    colors: <Color>[
                      app_colors.primaryColor,
                      app_colors.thirdColor,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  buttonTextColor: app_colors.textWhite,
                  buttonBorderRadius: 25,
                  buttonHeight: 50,
                  buttonWidth: double.infinity,
                  onPressed: () => onboardVm.updatePageIndex(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
