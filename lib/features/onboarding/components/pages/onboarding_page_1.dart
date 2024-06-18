import 'package:flutter/material.dart';
import 'package:little_indo_town_app/constants/assets.dart';
import 'package:little_indo_town_app/constants/colors.dart';
import 'package:little_indo_town_app/gen/strings.g.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 85,
        horizontal: 38,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            Assets.icons.appIconWhite,
            width: 70,
          ),
          const SizedBox(
            height: 72,
          ),
          Text(
            t.onboarding.hi,
            style: TextStyle(
              fontFamily: Assets.fonts.elikaGorica,
              color: colorOnPrimary,
              fontWeight: FontWeight.w400,
              fontSize: 50,
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Text(
            t.onboarding.welcome,
            style: TextStyle(
              fontFamily: Assets.fonts.elikaGorica,
              fontSize: 25,
              color: colorOnPrimary,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Text(
            t.onboarding.slogan,
            style: TextStyle(
              fontSize: 15,
              fontFamily: Assets.fonts.normsPro,
              color: colorOnPrimary,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
