import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/home/widgets/home_off20_widget.dart';
import 'package:little_indo_town_app/features/main/menu/cubit/menu_cubit.dart';
import 'package:little_indo_town_app/features/main/menu/main_menu_page.dart';
import 'package:little_indo_town_app/features/main/components/menu_drawer.dart';
import 'package:little_indo_town_app/features/main/menu/menu_routes.dart';
import 'package:little_indo_town_app/features/main/components/your_point_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MenuCubit menuPageCubit = context.read();
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        print("MenuPage.didPop: $didPop");
        if (didPop) {
          return;
        }

        menuPageCubit.backToMenuMain();

        final menuPageContext = menuPageCubit.navigatorKey.currentContext;
        print("menuPageContext?.mounted: ${menuPageContext?.mounted}");
        print(
            "Navigator.canPop(menuPageContext): ${menuPageContext == null ? null : Navigator.canPop(menuPageContext)}");
        if (menuPageContext != null &&
            menuPageContext.mounted &&
            Navigator.canPop(menuPageContext)) {
          Navigator.pop(menuPageContext);
          return;
        }

        print("context.mounted: ${context.mounted}");
        print("Navigator.canPop(context): ${Navigator.canPop(context)}");
        if (context.mounted && Navigator.canPop(context)) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
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
          title: BlocBuilder<MenuCubit, MenuState>(
            builder: (context, state) {
              if (state is MenuBintangBro) {
                return Image.asset(
                  Assets.images.bintangBro,
                  height: 25,
                );
              }
              if (state is MenuUrbanDurian) {
                return Image.asset(
                  Assets.images.urbanDurian,
                  height: 25,
                );
              }
              if (state is MenuTeguk) {
                return Image.asset(
                  Assets.images.teguk,
                  height: 25,
                );
              }
              return const SizedBox();
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
       
        body: Navigator(
          key: menuPageCubit.navigatorKey,
          initialRoute: MenuRoutes.mainMenuRoute,
          onGenerateRoute: menuPageCubit.onGenerateRoute,
        ),
      ),
    );
  }
}
