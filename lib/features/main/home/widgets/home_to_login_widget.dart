import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/configs/routes.dart';
import 'package:little_indo_town_app/gen/strings.g.dart';

class HomeToLoginWidget extends StatelessWidget {
  const HomeToLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 5.5,
            color: colorBlack.withOpacity(.25),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: colorSecondary,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, Routes.auth);
        },
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t.home.login_to_claim,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                      color: colorPrimary,
                    ),
                  ),
                  Text(
                    t.home.special_promo,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                      color: colorPrimary,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    t.home.login_to_be_member,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      fontSize: 9,
                      color: colorBlack,
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  SizedBox(
                    height: 32,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.auth);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        backgroundColor: colorPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Text(
                        t.home.login,
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: colorWhite,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          Assets.images.homeLock,
                          width: 58,
                        ),
                        Positioned(
                          top: 45,
                          left: 31,
                          child: Image.asset(
                            Assets.images.homeKey,
                            width: 73,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
