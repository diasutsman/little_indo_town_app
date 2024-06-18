import 'package:flutter/material.dart';
import 'package:little_indo_town_app/constants/assets.dart';
import 'package:little_indo_town_app/constants/colors.dart';
import 'package:little_indo_town_app/gen/strings.g.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

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
            height: 42,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 150,
                color: colorSecondary,
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            t.onboarding.location,
            style: TextStyle(
              fontFamily: Assets.fonts.elikaGorica,
              fontSize: 25,
              color: colorOnPrimary,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            t.onboarding.location_promo,
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
