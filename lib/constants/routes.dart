import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_indo_town_app/features/onboarding/components/cubit/onboarding_page_cubit.dart';
import 'package:little_indo_town_app/features/onboarding/onboarding_page.dart';

class Routes {
  static const String onboarding = '/';

  static final Map<String, Widget Function(BuildContext)> routes = {
    onboarding: (context) => BlocProvider(
          create: (_) => OnboardingPageCubit(),
          child: const OnboardingPage(),
        ),
  };
}
