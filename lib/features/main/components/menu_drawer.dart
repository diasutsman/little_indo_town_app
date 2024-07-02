import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/features/main/menu/cubit/menu_cubit.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final MenuCubit menuPageCubit = context.read();
    return Drawer(
      backgroundColor: colorPastel,
      width: double.infinity,
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 332,
              child: DrawerHeader(
                padding: EdgeInsets.zero,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(
                      builder: (context) {
                        return IconButton(
                          icon: const Icon(
                            Icons.close,
                          ),
                          padding: EdgeInsets.zero,
                          constraints:
                              const BoxConstraints(), // override default min size of 48px
                          style: const ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize
                                .shrinkWrap, // the '2023' part
                          ),
                          iconSize: 32,
                          onPressed: () {
                            Scaffold.of(context).closeDrawer();
                          },
                        );
                        // return const Icon(
                        //   Icons.close,
                        // );
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      onTap: () {},
                      title: Row(
                        children: [
                          Image.asset(
                            Assets.images.bintangBro,
                            width: 30,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Bintang Bro",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: colorBlack,
                              fontFamily: Assets.fonts.normsPro,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      onTap: () {},
                      title: Row(
                        children: [
                          Image.asset(
                            Assets.images.urbanDurian,
                            width: 30,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Urban Durian",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: colorBlack,
                              fontFamily: Assets.fonts.normsPro,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      onTap: () {},
                      title: Row(
                        children: [
                          Image.asset(
                            Assets.images.teguk,
                            width: 30,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Teguk",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: colorBlack,
                              fontFamily: Assets.fonts.normsPro,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      onTap: () {},
                      title: Row(
                        children: [
                          Image.asset(
                            Assets.icons.appIconSmallActive,
                            width: 30,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Catering",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: colorBlack,
                              fontFamily: Assets.fonts.normsPro,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Lacak Pesanan',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: colorBlack,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Pesanan Lalu',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: colorBlack,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Favorite',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: colorBlack,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
              onTap: () {
                Scaffold.of(context).closeDrawer();
                menuPageCubit.navigateToFavoriteMenu();
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Buku Alamat',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: colorBlack,
                  fontFamily: Assets.fonts.normsPro,
                ),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}
