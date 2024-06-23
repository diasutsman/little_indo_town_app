import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({
    super.key,
    this.isIconShown = true,
  });

  final bool isIconShown;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isIconShown
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  child: Image.asset(
                    Assets.icons.restaurantLocation,
                    height: 54,
                  ),
                )
              : const SizedBox(
                  height: 11,
                ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 28,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Little Indo Town",
                      style: TextStyle(
                        fontFamily: Assets.fonts.normsPro,
                        fontWeight: FontWeight.w800,
                        color: colorBlack,
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: colorLightGray4,
                      ),
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        "2.5KM",
                        style: TextStyle(
                          fontFamily: Assets.fonts.normsPro,
                          fontWeight: FontWeight.w800,
                          color: colorBlack,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "421 PITT ST., HAYMARKET NSW, \nAUSTRALIA 2000",
                  style: TextStyle(
                    fontFamily: Assets.fonts.normsPro,
                    fontWeight: FontWeight.w500,
                    color: colorBlack,
                    fontSize: 10,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  "Open 10AM - 10PM",
                  style: TextStyle(
                    fontFamily: Assets.fonts.normsPro,
                    fontWeight: FontWeight.w500,
                    color: colorBlack,
                    fontSize: 10,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            vertical: 13,
                          ),
                          overlayColor: colorLightGray5,
                          shadowColor: colorTransparent,
                          backgroundColor: colorTransparent,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                            side: BorderSide(
                              color: colorLightGray5,
                              width: 1,
                            ),
                          ),
                        ),
                        child: Text(
                          "Get directions",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: colorLightGray5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
