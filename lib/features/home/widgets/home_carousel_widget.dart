import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/home/widgets/components/home_carousel_cubit.dart';

class HomeCarouselWidget extends StatelessWidget {
  const HomeCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCarouselCubit homeCarouselCubit = context.read();
    return Container(
      decoration: const BoxDecoration(
        color: colorPrimary,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 80,
              bottom: 24,
            ),
            child: CarouselSlider(
              carouselController: homeCarouselCubit.carouselController,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 354 / 156,
                onPageChanged: homeCarouselCubit.onPageChanged,
                // viewportFraction: 0.91,
                viewportFraction: 1,
              ),
              items: homeCarouselCubit.items,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          BlocBuilder<HomeCarouselCubit, int>(
            builder: (context, state) => DotsIndicator(
              decorator: const DotsDecorator(
                color: colorLightGray,
                activeColor: colorSecondary,
                spacing: EdgeInsets.symmetric(horizontal: 4.5),
                activeSize: Size(16, 16),
                size: Size(16, 16),
              ),
              onTap: homeCarouselCubit.onDotTapped,
              dotsCount: homeCarouselCubit.items.length,
              position: state,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
