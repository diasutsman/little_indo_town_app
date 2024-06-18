import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingPageCubit extends Cubit<int> {
  OnboardingPageCubit() : super(0);

  final PageController pageController = PageController();
  set page(int page) {
    emit(page);
  }

  int get page => state;
}
