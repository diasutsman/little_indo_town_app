import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/components/menu_drawer.dart';
import 'package:little_indo_town_app/features/main/components/your_point_page.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      endDrawer: const YourPointPage(),
      appBar: AppBar(
        surfaceTintColor: colorTransparent,
        shadowColor: colorTransparent,
        scrolledUnderElevation: 0,
        backgroundColor: colorWhite,
        leading: Builder(
          builder: (context) {
            return IconButton(
              padding: const EdgeInsets.only(left: 12),
              constraints:
                  const BoxConstraints(), // override default min size of 48px
              style: const ButtonStyle(
                tapTargetSize:
                    MaterialTapTargetSize.shrinkWrap, // the '2023' part
              ),
              iconSize: 26,
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          Builder(builder: (context) {
            return Column(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.shopping_bag,
                          color: colorPrimary2,
                        ),
                        Text(
                          "0 point",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                            color: colorBlack,
                          ),
                        ),
                        const Icon(
                          Icons.chevron_right_rounded,
                          color: colorBlack,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
      backgroundColor: colorWhite2,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: const BoxDecoration(
                color: colorWhite,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ),
              child: Text(
                "Your Order",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                  color: colorBlack,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: const BoxDecoration(
                color: colorWhite,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.schedule,
                        color: colorPrimary3,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Your food is ready in 15 minutes",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: colorBlack,
                          fontFamily: Assets.fonts.normsPro,
                        ),
                      )
                    ],
                  ),
                  Text(
                    "11.20 AM",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: colorBlack,
                      fontFamily: Assets.fonts.normsPro,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              Assets.images.orderConfirmed,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: const BoxDecoration(
                color: colorWhite,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
                vertical: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.circle,
                        color: colorPrimary3,
                        size: 10,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Order confirmed",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: colorBlack,
                          fontFamily: Assets.fonts.normsPro,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.circle_outlined,
                        color: colorLightGray7,
                        size: 10,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Food is ready at the restaurant",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: colorBlack,
                          fontFamily: Assets.fonts.normsPro,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.circle_outlined,
                        color: colorLightGray7,
                        size: 10,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Already pickup",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: colorBlack,
                          fontFamily: Assets.fonts.normsPro,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ...List.generate(
                  3,
                  (_) {
                    return Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: colorWhite,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 13,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              Assets.images.order1,
                              width: 125,
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Crispy Chicken Burger",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15,
                                    color: colorBlack,
                                    fontFamily: Assets.fonts.normsPro,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Crispy Chicken Burger",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 8,
                                    color: colorBlack,
                                    fontFamily: Assets.fonts.normsPro,
                                  ),
                                ),
                                const SizedBox(
                                  height: 32,
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
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
