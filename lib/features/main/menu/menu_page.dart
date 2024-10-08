import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/menu/cubit/menu_cubit.dart';
import 'package:little_indo_town_app/features/main/components/menu_drawer.dart';
import 'package:little_indo_town_app/features/main/menu/menu_routes.dart';
import 'package:little_indo_town_app/features/main/components/your_point_page.dart';
import 'package:logger/logger.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MenuCubit menuPageCubit = context.read();
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        Logger().d("MenuPage.didPop: $didPop");
        if (didPop) {
          return;
        }

        menuPageCubit.resetMenuRoute();

        final menuPageContext = menuPageCubit.navigatorKey.currentContext;
        Logger().d("menuPageContext?.mounted: ${menuPageContext?.mounted}");
        Logger().d(
            "Navigator.canPop(menuPageContext): ${menuPageContext == null ? null : Navigator.canPop(menuPageContext)}");
        if (menuPageContext != null &&
            menuPageContext.mounted &&
            Navigator.canPop(menuPageContext)) {
          Navigator.pop(menuPageContext);
          return;
        }

        Logger().d("context.mounted: ${context.mounted}");
        Logger().d("Navigator.canPop(context): ${Navigator.canPop(context)}");
        if (context.mounted && Navigator.canPop(context)) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        drawer: const MenuDrawer(),
        endDrawer: const YourPointPage(),
        appBar: AppBar(
          centerTitle: false,
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
          title: BlocBuilder<MenuCubit, MenuState>(
            builder: (context, state) {
              if (state is MenuBintangBroState) {
                return Image.asset(
                  Assets.images.bintangBro,
                  height: 25,
                );
              }
              if (state is MenuUrbanDurianState) {
                return Image.asset(
                  Assets.images.urbanDurian,
                  height: 25,
                );
              }
              if (state is MenuTegukState) {
                return Image.asset(
                  Assets.images.teguk,
                  height: 25,
                );
              }
              if (state is MenuFavoriteState) {
                return Text(
                  "Favorite",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontFamily: Assets.fonts.normsPro,
                  ),
                );
              }
              if (state is OrderHistoryMenuState) {
                return Text(
                  "Order History",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontFamily: Assets.fonts.normsPro,
                  ),
                );
              }
              if (state is PointHistoryMenuState) {
                return Text(
                  "Point History",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontFamily: Assets.fonts.normsPro,
                  ),
                );
              }
              return const SizedBox();
            },
          ),
          actions: [
            BlocBuilder<MenuCubit, MenuState>(
              builder: (context, state) {
                if (state is PointHistoryMenuState) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 27),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Point",
                          style: TextStyle(
                            fontFamily: Assets.fonts.normsPro,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: colorLightGray11,
                          ),
                        ),
                        Text(
                          "280 point",
                          style: TextStyle(
                            fontFamily: Assets.fonts.normsPro,
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: colorBlack,
                          ),
                        ),
                      ],
                    ),
                  );
                }
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
              },
            ),
          ],
        ),
        body: Navigator(
          key: menuPageCubit.navigatorKey,
          initialRoute: MenuRoutes.locationMenuRoute,
          onGenerateRoute: menuPageCubit.onGenerateRoute,
        ),
      ),
    );
  }
}
