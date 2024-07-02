import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/menu/cubit/menu_location_cubit.dart';
import 'package:little_indo_town_app/features/main/menu/menu_location_item.dart';

class MenuLocationPage extends StatelessWidget {
  const MenuLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MenuLocationCubit menuLocationCubit = context.read();
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: colorTransparent,
        shadowColor: colorTransparent,
        scrolledUnderElevation: 0,
        backgroundColor: colorWhite,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.icons.appIcon,
              height: 35,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              "Choose Restaurant",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w800,
                fontSize: 20,
                color: colorPrimary,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              menuLocationCubit.searchController.openView();
            },
            icon: const Icon(Icons.search_rounded),
            iconSize: 34,
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.images.restaurantMap,
              fit: BoxFit.cover,
            ),
          ),
          const Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MenuLocationItem(),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: SearchAnchor(
              viewBackgroundColor: colorLightGray6,
              searchController: menuLocationCubit.searchController,
              builder: (context, controller) {
                return const SizedBox();
              },
              suggestionsBuilder: (context, controller) {
                return [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                    child: MenuLocationItem(
                      isIconShown: false,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                    child: MenuLocationItem(
                      isIconShown: false,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                    child: MenuLocationItem(
                      isIconShown: false,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                    child: MenuLocationItem(
                      isIconShown: false,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                    child: MenuLocationItem(
                      isIconShown: false,
                    ),
                  ),
                  const SizedBox(
                    height: 250,
                  ),
                ];
              },
            ),
          ),
        ],
      ),
    );
  }
}
