import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_indo_town_app/constants/colors.dart';
import 'package:little_indo_town_app/features/onboarding/components/cubit/onboarding_page_cubit.dart';
import 'package:little_indo_town_app/features/onboarding/components/pages/Onboarding_page_1.dart';
import 'package:little_indo_town_app/features/onboarding/components/pages/onboarding_page_2.dart';
import 'package:little_indo_town_app/features/onboarding/components/pages/onboarding_page_3.dart';
import 'package:little_indo_town_app/gen/strings.g.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: context.read<OnboardingPageCubit>().pageController,
              onPageChanged: (index) {
                context.read<OnboardingPageCubit>().page = index;
              },
              itemCount: 3,
              itemBuilder: (context, index) {
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
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    context
                        .read<OnboardingPageCubit>()
                        .pageController
                        .nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorSecondary,
                    padding: const EdgeInsets.symmetric(
                      vertical: 18,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(0),
                      ),
                    ),
                    textStyle: const TextStyle(
                      color: colorOnSecondary,
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  child: Text(
                    t.onboarding.next,
                    style: const TextStyle(
                      color: colorOnSecondary,
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
