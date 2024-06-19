import 'package:flutter/material.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/gen/strings.g.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

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
            height: 39.5,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.notifications,
                size: 150,
                color: colorSecondary,
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            t.onboarding.notification,
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
            t.onboarding.notification_description,
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
