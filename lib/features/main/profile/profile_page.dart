import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_indo_town_app/components/app_logged_in_cubit.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/configs/routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 87,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Image.asset(
                Assets.icons.appIcon,
                height: 64,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Text(
                "Account",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: colorBlack,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 22,
              ),
              onTap: () {
                Navigator.pushNamed(context, Routes.personalDataPage);
              },
              leading: const Icon(
                Icons.person,
                size: 26,
                color: colorBlack,
              ),
              title: Text(
                "Personal data",
                style: TextStyle(
                  inherit: false,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: colorBlack,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
              trailing: const Icon(
                Icons.chevron_right_rounded,
                size: 26,
                color: colorBlack,
              ),
            ),
            const Divider(
              thickness: 1,
              height: 1,
              color: colorBlack,
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 22,
              ),
              onTap: () {
                Navigator.pushNamed(context, Routes.passwordSecurityPage);
              },
              leading: const Icon(
                Icons.lock,
                size: 26,
                color: colorBlack,
              ),
              title: Text(
                "Password & Security",
                style: TextStyle(
                  inherit: false,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: colorBlack,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
              trailing: const Icon(
                Icons.chevron_right_rounded,
                size: 26,
                color: colorBlack,
              ),
            ),
            const Divider(
              thickness: 1,
              height: 1,
              color: colorBlack,
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 22,
              ),
              onTap: () {},
              leading: const Icon(
                Icons.delete_rounded,
                size: 26,
                color: colorBlack,
              ),
              title: Text(
                "Delete Account",
                style: TextStyle(
                  inherit: false,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: colorBlack,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
              trailing: const Icon(
                Icons.chevron_right_rounded,
                size: 26,
                color: colorBlack,
              ),
            ),
            const Divider(
              thickness: 1,
              height: 1,
              color: colorBlack,
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 22,
              ),
              onTap: () {
                context.read<AppLoggedInCubit>().logout();
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  Routes.auth,
                  (context) => false,
                );
              },
              leading: const Icon(
                Icons.logout,
                size: 26,
                color: colorBlack,
              ),
              title: Text(
                "Log out",
                style: TextStyle(
                  inherit: false,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: colorBlack,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
              trailing: const Icon(
                Icons.chevron_right_rounded,
                size: 26,
                color: colorBlack,
              ),
            ),
            const Divider(
              thickness: 1,
              height: 1,
              color: colorBlack,
            ),
          ],
        ),
      ),
    );
  }
}
