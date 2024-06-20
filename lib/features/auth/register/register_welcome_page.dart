import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/gen/strings.g.dart';

class RegisterWelcomePage extends StatelessWidget {
  const RegisterWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(38),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            Assets.icons.appIcon,
            height: 127,
          ),
          const SizedBox(
            height: 64,
          ),
          Text(
            t.auth.register.welcome_to_the_club,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 25,
              color: colorPrimary,
              fontFamily: Assets.fonts.elikaGorica,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            t.auth.register.welcome_congratulation,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: colorDarkGray,
              fontFamily: Assets.fonts.normsPro,
            ),
          ),
        ],
      ),
    );
  }
}
