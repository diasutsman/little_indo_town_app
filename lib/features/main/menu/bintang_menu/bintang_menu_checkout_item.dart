import 'package:flutter/material.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';

class BintangMenuCheckoutItem extends StatelessWidget {
  const BintangMenuCheckoutItem({super.key, required this.onMenuItemTap});
  final void Function() onMenuItemTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onMenuItemTap,
      splashColor: colorPrimary,
      child: Material(
        color: colorWhite,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    Assets.images.bintangBroMenuDetail,
                    width: 125,
                    height: 108,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          child: Text(
                            "Delete",
                            style: TextStyle(
                              color: colorPrimary2,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontFamily: Assets.fonts.normsPro,
                            ),
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        const VerticalDivider(
                          width: 1,
                          thickness: 1,
                          color: colorBlack,
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        InkWell(
                          child: Text(
                            "Edit",
                            style: TextStyle(
                              color: colorPrimary2,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontFamily: Assets.fonts.normsPro,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Crispy Chicken Burger",
                      style: TextStyle(
                        color: colorBlack,
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                        fontFamily: Assets.fonts.normsPro,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Noted : Spicy, Extra Cheese",
                      style: TextStyle(
                        color: colorBlack,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        fontFamily: Assets.fonts.normsPro,
                      ),
                    ),
                    const SizedBox(
                      height: 33,
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
            ],
          ),
        ),
      ),
    );
  }
}
