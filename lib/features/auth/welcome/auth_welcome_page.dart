import 'package:flutter/widgets.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/gen/strings.g.dart';

class AuthWelcomePage extends StatelessWidget {
  const AuthWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(38),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            Assets.icons.appIcon,
            height: 155,
          ),
          const SizedBox(
            height: 76,
          ),
          Text(
            t.auth.welcome,
            style: TextStyle(
              fontFamily: Assets.fonts.elikaGorica,
              fontWeight: FontWeight.w400,
              fontSize: 25,
              color: colorPrimary,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            t.auth.info,
            style: TextStyle(
              fontFamily: Assets.fonts.normsPro,
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: colorPrimary,
            ),
          )
        ],
      ),
    );
  }
}
