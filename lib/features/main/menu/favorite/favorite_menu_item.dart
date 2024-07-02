import 'package:flutter/material.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';

class FavoriteMenuItem extends StatelessWidget {
  const FavoriteMenuItem({super.key, required this.onMenuItemTap});
  final void Function() onMenuItemTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onMenuItemTap,
      splashColor: colorPrimary,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),
        child: Material(
          color: colorWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                Assets.images.bintangBroMenuItem,
                // height: 145,
              ),
              const SizedBox(
                height: 5,
              ),
              Image.asset(
                Assets.images.choiceRasa,
                height: 24,
              ),
              const SizedBox(
                height: 9,
              ),
              Text(
                "Crispy Chicken Burger",
                style: TextStyle(
                  color: colorBlack,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.favorite,
                      color: colorTransparent,
                    ),
                  ),
                  Text(
                    "\$16.5",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: colorPrimary3,
                      fontFamily: Assets.fonts.normsPro,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    color: colorPrimary5,
                    icon: const Icon(Icons.favorite),
                  )
                ],
              ),
              // Expanded(
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         "Promo : Crispy Chicken Burger",
              //         style: TextStyle(
              //           color: colorBlack,
              //           fontWeight: FontWeight.w400,
              //           fontSize: 12,
              //           fontFamily: Assets.fonts.normsPro,
              //         ),
              //       ),
              //       const SizedBox(
              //         height: 20,
              //       ),
              //       Text(
              //         "\$16.5",
              //         style: TextStyle(
              //           fontWeight: FontWeight.w700,
              //           fontSize: 20,
              //           color: colorPrimary3,
              //           fontFamily: Assets.fonts.normsPro,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   width: 16,
              // ),
              // const Icon(
              //   Icons.chevron_right_rounded,
              //   size: 20,
              // ),
              // const SizedBox(
              //   width: 8,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
