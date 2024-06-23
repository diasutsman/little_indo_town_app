import 'package:flutter/material.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';

class BintangMenuItem extends StatelessWidget {
  const BintangMenuItem({super.key, required this.onMenuItemTap});
  final void Function() onMenuItemTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onMenuItemTap,
      splashColor: colorPrimary,
      child: Material(
        color: colorWhite,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Assets.images.bintangBroMenuItem,
              height: 100,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Promo : Crispy Chicken Burger",
                    style: TextStyle(
                      color: colorBlack,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: Assets.fonts.normsPro,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "\$16.5",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: colorPrimary3,
                      fontFamily: Assets.fonts.normsPro,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            const Icon(
              Icons.chevron_right_rounded,
              size: 20,
            ),
            const SizedBox(
              width: 8,
            ),
          ],
        ),
      ),
    );
  }
}
