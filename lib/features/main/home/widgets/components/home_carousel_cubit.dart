import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_indo_town_app/configs/assets.dart';

class HomeCarouselCubit extends Cubit<int> {
  HomeCarouselCubit() : super(0);

  dynamic onPageChanged(int index, CarouselPageChangedReason reason) {
    emit(index);
  }

  final CarouselSliderController carouselController =
      CarouselSliderController();

  int get currentPage => state;

  final List<Widget> items = [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Image.asset(Assets.images.homeCarousel1),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Image.asset(Assets.images.homeCarousel1),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Image.asset(Assets.images.homeCarousel1),
    ),
  ];

  void onDotTapped(int position) {
    emit(position);
    carouselController.animateToPage(
      position,
      curve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 800),
    );
  }
}
