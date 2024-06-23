import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/home/widgets/home_off20_widget.dart';
import 'package:little_indo_town_app/features/main/menu/cubit/menu_cubit.dart';


class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MenuCubit menuPageCubit = context.read();
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(26),
            width: double.infinity,
            height: 208,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.icons.star),
                fit: BoxFit.none,
                alignment: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(12),
              color: colorPrimary,
              boxShadow: [
                BoxShadow(
                  color: colorBlack.withOpacity(0.25),
                  offset: const Offset(1, 5),
                  blurRadius: 9.9,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  Assets.icons.appIconWhite,
                  width: 85,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Card Number",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: colorWhite,
                      ),
                    ),
                    Text(
                      "152 263 582",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: colorWhite,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Menu",
            style: GoogleFonts.montserrat(
              color: colorPrimary,
              fontWeight: FontWeight.w800,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  menuPageCubit.navigateToBintangBro();
                },
                child: Image.asset(
                  Assets.images.bintangBro,
                  width: 84,
                ),
              ),
              InkWell(
                onTap: () {
                  menuPageCubit.navigateToUrbanDurian();
                },
                child: Image.asset(
                  Assets.images.urbanDurian,
                  width: 65,
                ),
              ),
              InkWell(
                onTap: () {
                  menuPageCubit.navigateToTeguk();
                },
                child: Image.asset(
                  Assets.images.teguk,
                  width: 86,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Catering",
                    style: GoogleFonts.montserrat(
                      color: colorPrimary,
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "See All",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                            color: colorBlack,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Icon(
                          Icons.chevron_right_rounded,
                          color: colorBlack,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 75,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Stack(
                        children: [
                          Image.asset(
                            Assets.images.breakfast,
                          ),
                          Positioned.fill(
                            child: Container(
                              color: colorBlack.withOpacity(0.20),
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Breakfast",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: colorWhite,
                                  fontFamily: Assets.fonts.elikaGorica,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 75,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Stack(
                        children: [
                          Image.asset(
                            Assets.images.lunch,
                          ),
                          Positioned.fill(
                            child: Container(
                              color: colorBlack.withOpacity(0.20),
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Lunch",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: colorWhite,
                                  fontFamily: Assets.fonts.elikaGorica,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 75,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Stack(
                        children: [
                          Image.asset(
                            Assets.images.individualServe,
                          ),
                          Positioned.fill(
                            child: Container(
                              color: colorBlack.withOpacity(0.20),
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Individual\nServe",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: colorWhite,
                                  fontFamily: Assets.fonts.elikaGorica,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Reward",
                    style: GoogleFonts.montserrat(
                      color: colorPrimary,
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "See All",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                            color: colorBlack,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Icon(
                          Icons.chevron_right_rounded,
                          color: colorBlack,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 4),
                            blurRadius: 4,
                            color: colorBlack.withOpacity(0.25),
                          ),
                        ],
                        color: colorWhite,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.asset(
                              Assets.images.crispyChicken,
                              width: 109.29,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: colorBlack,
                                width: 1,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 16,
                                  color: colorPrimary2,
                                ),
                                const SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "10 Poin",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 10,
                                    color: colorPrimary2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Crispy Chicken",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: colorPrimary2,
                            ),
                          ),
                          Text(
                            "Burger",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                              color: colorDarkGray3,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 4),
                            blurRadius: 4,
                            color: colorBlack.withOpacity(0.25),
                          ),
                        ],
                        color: colorWhite,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.asset(
                              Assets.images.crispyChicken,
                              width: 109.29,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: colorBlack,
                                width: 1,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 16,
                                  color: colorPrimary2,
                                ),
                                const SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "10 Poin",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 10,
                                    color: colorPrimary2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Crispy Chicken",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: colorPrimary2,
                            ),
                          ),
                          Text(
                            "Burger",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                              color: colorDarkGray3,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 4),
                            blurRadius: 4,
                            color: colorBlack.withOpacity(0.25),
                          ),
                        ],
                        color: colorWhite,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.asset(
                              Assets.images.crispyChicken,
                              width: 109.29,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: colorBlack,
                                width: 1,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 16,
                                  color: colorPrimary2,
                                ),
                                const SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "10 Poin",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 10,
                                    color: colorPrimary2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Crispy Chicken",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: colorPrimary2,
                            ),
                          ),
                          Text(
                            "Burger",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                              color: colorDarkGray3,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 28,
          ),
          const HomeOff20Widget(),
        ],
      ),
    );
  }
}
