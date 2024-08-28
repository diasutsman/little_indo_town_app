import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/menu/cubit/menu_cubit.dart';

class YourPointPage extends StatelessWidget {
  const YourPointPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MenuCubit menuPageCubit = context.read();
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: Text(
          "Your Point",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w800,
            fontSize: 15,
            color: colorBlack,
          ),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.chevron_left_rounded,
                color: colorBlack,
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 27,
          vertical: 47,
        ),
        child: Stack(
          children: [
            Positioned.fill(
              top: 80,
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(Assets.images.poin),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "0 point",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w800,
                        fontSize: 25,
                        color: colorBlack,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Points expire 12 months after you earn them\nThe maximum points limit is 500 points, if you do\npurchases that cause you to earn points exceed\nmaximum points limit then you will not get points",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: colorBlack,
                      ),
                    ),
                    const SizedBox(
                      height: 272,
                    ),
                    Builder(
                      builder: (context) {
                        return TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            menuPageCubit.navigateToPointHistoryMenu();
                          },
                          child: Text(
                            "Point history",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: colorBlack,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Earn points on all your purchases at\nLittle Indo Town",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: colorBlack,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assets.images.bintangBro,
                          width: 84,
                        ),
                        Image.asset(
                          Assets.images.urbanDurian,
                          width: 65,
                        ),
                        Image.asset(
                          Assets.images.teguk,
                          width: 86,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
