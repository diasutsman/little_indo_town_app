import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/onboarding/components/cubit/onboarding_page_cubit.dart';
import 'package:little_indo_town_app/gen/strings.g.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingPageCubit = context.read<OnboardingPageCubit>();
    return Scaffold(
      backgroundColor: colorPrimary,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: onboardingPageCubit.pageController,
              onPageChanged: onboardingPageCubit.onPageChanged,
              itemCount: 3,
              itemBuilder: onboardingPageCubit.pageBuilder,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () =>
                      onboardingPageCubit.nextPage(context: context),
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
