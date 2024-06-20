import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/components/app_logged_in_cubit.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/home/widgets/components/home_carousel_cubit.dart';
import 'package:little_indo_town_app/features/main/home/widgets/home_carousel_widget.dart';
import 'package:little_indo_town_app/features/main/home/widgets/home_off20_widget.dart';
import 'package:little_indo_town_app/features/main/home/widgets/home_to_login_widget.dart';
import 'package:little_indo_town_app/gen/strings.g.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocProvider(
              create: (context) => HomeCarouselCubit(),
              child: const HomeCarouselWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t.home.menu,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: colorPrimary,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        Assets.images.bintangBro,
                        width: 64,
                      ),
                      Image.asset(
                        Assets.images.urbanDurian,
                        width: 64,
                      ),
                      Image.asset(
                        Assets.images.teguk,
                        width: 64,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  BlocBuilder<AppLoggedInCubit, bool>(
                    builder: (context, isLoggedIn) {
                      if (isLoggedIn) {
                        return const SizedBox();
                      }
                      return const HomeToLoginWidget();
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const HomeOff20Widget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
