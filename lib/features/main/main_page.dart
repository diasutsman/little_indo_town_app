import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_indo_town_app/configs/assets.dart';
import 'package:little_indo_town_app/configs/colors.dart';
import 'package:little_indo_town_app/configs/routes.dart';
import 'package:little_indo_town_app/features/main/cubit/main_cubit.dart';
import 'package:little_indo_town_app/features/main/home/home_page.dart';
import 'package:little_indo_town_app/features/main/location/location_cubit.dart';
import 'package:little_indo_town_app/features/main/location/location_page.dart';
import 'package:little_indo_town_app/features/main/menu/cubit/menu_cubit.dart';
import 'package:little_indo_town_app/features/main/menu/menu_page.dart';
import 'package:little_indo_town_app/features/main/order/order_page.dart';
import 'package:little_indo_town_app/features/main/profile/profile_page.dart';
import 'package:little_indo_town_app/gen/strings.g.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select((MainCubit cubit) => cubit.state.tab);
    return Scaffold(
      body: IndexedStack(
        index: selectedTab.index,
        children: [
          const HomePage(),
          BlocProvider(
            create: (context) => MenuCubit(),
            child: const MenuPage(),
          ),
          const OrderPage(),
          BlocProvider(
            create: (context) => LocationCubit(),
            child: const LocationPage(),
          ),
          const ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: colorWhite,
        height: 75,
        padding: EdgeInsets.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _HomeTabButton(
              groupValue: selectedTab,
              value: MainTab.home,
              icon: ImageIcon(
                AssetImage(Assets.icons.appIconSmall),
              ),
              menuName: t.main_menu.home,
            ),
            _HomeTabButton(
              groupValue: selectedTab,
              value: MainTab.menu,
              icon: const Icon(Icons.import_contacts_rounded),
              menuName: t.main_menu.menu,
            ),
            _HomeTabButton(
              groupValue: selectedTab,
              value: MainTab.order,
              icon: const Icon(Icons.list),
              menuName: t.main_menu.order,
            ),
            _HomeTabButton(
              groupValue: selectedTab,
              value: MainTab.location,
              icon: const Icon(Icons.location_on),
              menuName: t.main_menu.restaurant,
            ),
            _HomeTabButton(
              groupValue: selectedTab,
              value: MainTab.profile,
              icon: const Icon(Icons.person),
              menuName: t.main_menu.profile,
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeTabButton extends StatelessWidget {
  const _HomeTabButton({
    required this.groupValue,
    required this.value,
    required this.icon,
    required this.menuName,
  });

  final MainTab groupValue;
  final MainTab value;
  final Widget icon;
  final String menuName;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.read<MainCubit>().setTab(value),
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      iconSize: 32,
      color: groupValue != value ? colorDarkGray2 : colorPrimary,
      icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          Text(
            menuName,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: colorBlack,
            ),
          )
        ],
      ),
    );
  }
}
