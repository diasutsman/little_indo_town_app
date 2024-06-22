import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_indo_town_app/features/main/menu/bintang_menu_page.dart';
import 'package:little_indo_town_app/features/main/menu/main_menu_page.dart';
import 'package:little_indo_town_app/features/main/menu/menu_routes.dart';

class MenuPageCubit extends Cubit<bool> {
  MenuPageCubit() : super(true);

  final navigatorKey = GlobalKey<NavigatorState>();

  void enablePop() {
    emit(true);
  }

  void disablePop() {
    emit(false);
  }

  bool get canPop => state;

  Route onGenerateRoute(RouteSettings settings) {
    Widget? page;
    switch (settings.name) {
      case MenuRoutes.mainMenuRoute:
        page = const MainMenuPage();
        break;
      case MenuRoutes.bintangBroMenuRoute:
        page = const BintangMenuPage();
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
