part of 'app_redirect_to_route_cubit.dart';

sealed class AppRedirectToRouteState extends Equatable {
  const AppRedirectToRouteState();

  bool get onLoadingBoarding => this is AppShowOnboardingInitial;
  bool get showOnboarding => this is AppShowOnboarding;
  bool get skipOnboarding => this is AppSkipOnboarding;

  @override
  List<Object> get props => [];
}

final class AppShowOnboardingInitial extends AppRedirectToRouteState {}

final class AppShowOnboarding extends AppRedirectToRouteState {}

final class AppSkipOnboarding extends AppRedirectToRouteState {}
