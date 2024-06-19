import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_indo_town_app/configs/routes.dart';
import 'package:little_indo_town_app/features/onboarding/components/pages/Onboarding_page_1.dart';
import 'package:little_indo_town_app/features/onboarding/components/pages/onboarding_page_2.dart';
import 'package:little_indo_town_app/features/onboarding/components/pages/onboarding_page_3.dart';

class OnboardingPageCubit extends Cubit<int> {
  OnboardingPageCubit() : super(0);

  final PageController pageController = PageController();
  set page(int page) {
    emit(page);
  }

  int get page => state;

  void nextPage({required BuildContext context}) {
    if (page == 2) {
      Navigator.pushReplacementNamed(context, Routes.home);
      return;
    }
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void onPageChanged(int index) {
    page = index;
  }

  Widget? pageBuilder(BuildContext context, int index) {
    switch (index) {
      case 0:
        return const OnboardingPage1();
      case 1:
        return const OnboardingPage2();
      case 2:
        return const OnboardingPage3();
      default:
    }
    return null;
  }
}
