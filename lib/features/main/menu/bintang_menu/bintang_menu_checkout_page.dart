import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/cubit/main_cubit.dart';
import 'package:little_indo_town_app/features/main/menu/bintang_menu/bintang_menu_checkout_item.dart';
import 'package:little_indo_town_app/features/main/menu/cubit/menu_cubit.dart';
import 'package:little_indo_town_app/features/main/menu/menu_routes.dart';

class BintangMenuCheckoutPage extends StatelessWidget {
  const BintangMenuCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: Material(
                  color: colorWhite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 16,
                        ),
                        child: Text(
                          "Your Order",
                          style: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.w800,
                            fontSize: 25,
                            fontFamily: Assets.fonts.normsPro,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 8,
              ),
              child: Column(
                children: [
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 8,
                      );
                    },
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return BintangMenuCheckoutItem(
                        onMenuItemTap: () {},
                      );
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 13,
                      vertical: 22,
                    ),
                    color: colorWhite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Got voucher discount",
                          style: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                            fontFamily: Assets.fonts.normsPro,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: TextFormField(
                                  cursorColor: colorPrimary,
                                  cursorHeight: 25,
                                  textAlignVertical: TextAlignVertical.top,
                                  keyboardType: TextInputType.text,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.zero,
                                      borderSide: BorderSide(
                                        color: colorLightGray8,
                                        width: 1,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.zero,
                                      borderSide: BorderSide(
                                        color: colorPrimary,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                flex: 1,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: colorPrimary,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(0),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Use it",
                                    style: TextStyle(
                                      color: colorWhite,
                                      fontFamily: Assets.fonts.normsPro,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 11,
                      vertical: 15,
                    ),
                    color: colorWhite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sub Total :",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: colorBlack,
                              ),
                            ),
                            Text(
                              "\$15",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: colorPrimary3,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Fee:",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: colorBlack,
                              ),
                            ),
                            Text(
                              "\$1.5",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: colorPrimary3,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Takeaway Charge :",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: colorBlack,
                              ),
                            ),
                            Text(
                              "\$1.5",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: colorPrimary3,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tax :",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: colorBlack,
                              ),
                            ),
                            Text(
                              "\$1.5",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: colorPrimary3,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 11,
                      vertical: 15,
                    ),
                    color: colorWhite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total :",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: colorBlack,
                              ),
                            ),
                            Text(
                              "\$30",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: colorPrimary3,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: colorPrimary3,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(0),
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            overlayColor: colorSecondary.withOpacity(0.25),
                          ),
                          onPressed: () {
                            context.read<MainCubit>().setTab(MainTab.order);
                            context.read<MenuCubit>().resetMenuRoute();
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              MenuRoutes.initialRoute,
                              (context) => false,
                            );
                          },
                          child: Text(
                            "Order",
                            style: TextStyle(
                              color: colorWhite,
                              fontFamily: Assets.fonts.normsPro,
                              fontWeight: FontWeight.w800,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
