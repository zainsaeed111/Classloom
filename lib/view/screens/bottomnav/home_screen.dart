import 'package:classloom/core/contsants/app_colors.dart';
import 'package:classloom/view/screens/common/user_profile_screen.dart';
import 'package:classloom/view/screens/teacher/teachers_classes_screen.dart';
import 'package:classloom/view/screens/teacher/teachers_dashboard_screen.dart';
import 'package:classloom/view/screens/teacher/teachers_smart_class_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/bottom_nav_controller.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController navigationController =
    Get.find<BottomNavController>();

    final List<Widget> bottomBarTabs = const [
      TeachersDashboard(),
      TeachersClasses(),
      TeachersTeachroom(),
      UserProfileScreen(),
    ];

    return Obx(
          () => Scaffold(
        body: bottomBarTabs[navigationController.selectedBottomTab.value],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.unselectedItemColo,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.class_), label: "Classes"),
            BottomNavigationBarItem(
                icon: Icon(Icons.read_more_outlined), label: "Smart Class"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          currentIndex: navigationController.selectedBottomTab.value,
          onTap: navigationController.onBottomTabSelection,
        ),
      ),
    );
  }
}
