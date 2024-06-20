import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_indo_town_app/features/auth/auth_page.dart';
import 'package:little_indo_town_app/features/auth/components/auth_page_cubit.dart';
import 'package:little_indo_town_app/features/main/cubit/main_cubit.dart';
import 'package:little_indo_town_app/features/main/home/home_page.dart';
import 'package:little_indo_town_app/features/main/main_page.dart';
import 'package:little_indo_town_app/features/onboarding/components/cubit/onboarding_page_cubit.dart';
import 'package:little_indo_town_app/features/onboarding/onboarding_page.dart';

class Routes {
  static const String onboarding = '/onboarding';
  static const String main = '/';
  static const String auth = '/auth';
  static const String home = '/home';

  static final Map<String, Widget Function(BuildContext)> routes = {
    onboarding: (context) => BlocProvider(
          create: (_) => OnboardingPageCubit(),
          child: const OnboardingPage(),
        ),
    main: (context) => BlocProvider(
          create: (_) => MainCubit(),
          child: const MainPage(),
        ),
    auth: (context) => BlocProvider(
          create: (_) => AuthPageCubit(),
          child: const AuthPage(),
        ),
    home: (context) => const HomePage(),
  };

  static get initialRoute => onboarding;

  static Widget getWidgetByRoute({
    required BuildContext context,
    required String route,
  }) {
    if (routes[route] == null) {
      throw Exception('Route not found');
    }
    return routes[route]!(context);
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    if (settings.name == main) {
      return PageRouteBuilder(
        settings:
            settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
        pageBuilder: (context, __, ___) => getWidgetByRoute(
          context: context,
          route: settings.name.toString(),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset.zero;
          const end = Offset(0.0, 1.0);
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );
    }

    // Unknown route
    return MaterialPageRoute(
      builder: (context) => getWidgetByRoute(
        context: context,
        route: settings.name.toString(),
      ),
    );
  }
}
