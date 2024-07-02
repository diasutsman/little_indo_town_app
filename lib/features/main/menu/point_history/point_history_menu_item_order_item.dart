import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';

class PointHistoryMenuItemPointItem extends StatelessWidget {
  const PointHistoryMenuItemPointItem({
    super.key,
    required this.onMenuItemTap,
    this.isProcessing = false,
  });

  final void Function() onMenuItemTap;
  final bool isProcessing;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onMenuItemTap,
      splashColor: colorPrimary,
      child: Material(
        color: colorWhite,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Point for discount",
                    style: GoogleFonts.montserrat(
                      color: colorBlack,
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "05 June 2024",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: colorBlack,
                      fontFamily: Assets.fonts.normsPro,
                    ),
                  ),
                ],
              ),
              Text(
                "-10",
                style: GoogleFonts.montserrat(
                  color: colorBlack,
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
