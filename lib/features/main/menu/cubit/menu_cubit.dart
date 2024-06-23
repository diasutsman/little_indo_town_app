import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:little_indo_town_app/features/main/menu/bintang_menu/bintang_menu_checkout_page.dart';
import 'package:little_indo_town_app/features/main/menu/bintang_menu/bintang_menu_detail_page.dart';
import 'package:little_indo_town_app/features/main/menu/bintang_menu/bintang_menu_page.dart';
import 'package:little_indo_town_app/features/main/menu/main_menu_page.dart';
import 'package:little_indo_town_app/features/main/menu/menu_routes.dart';

part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(MenuMain());

  final navigatorKey = GlobalKey<NavigatorState>();

  void navigateToBintangBro() {
    emit(MenuBintangBro());
    navigatorKey.currentState?.pushNamed(
      MenuRoutes.bintangBroMenuRoute,
    );
  }

  void navigateToUrbanDurian() {
    emit(MenuUrbanDurian());
    navigatorKey.currentState?.pushNamed(
      MenuRoutes.urbanDurianMenuRoute,
    );
  }

  void navigateToTeguk() {
    emit(MenuTeguk());
    navigatorKey.currentState?.pushNamed(
      MenuRoutes.tegukMenuRoute,
    );
  }

  void backToMenuMain() {
    emit(MenuMain());
  }

  Route onGenerateRoute(RouteSettings settings) {
    Widget? page;
    switch (settings.name) {
      case MenuRoutes.mainMenuRoute:
        page = const MainMenuPage();
        break;
      case MenuRoutes.bintangBroMenuRoute:
        page = const BintangMenuPage();
        break;
      case MenuRoutes.bintangBroMenuDetailRoute:
        page = const BintangMenuDetailPage();
        break;
      case MenuRoutes.bintangBroMenuCheckoutRoute:
        page = const BintangMenuCheckoutPage();
        break;

      default:
        throw Exception('Unknown route: ${settings.name}');
    }

    return MaterialPageRoute<dynamic>(
      builder: (context) {
        return page as Widget;
      },
      settings: settings,
    );
  }
}
