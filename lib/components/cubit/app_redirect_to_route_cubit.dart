import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_storage/get_storage.dart';

part 'app_redirect_to_route_state.dart';

class AppRedirectToRouteCubit extends Cubit<AppRedirectToRouteState> {
  AppRedirectToRouteCubit() : super(AppShowOnboardingInitial()) {
    isOnboardingShown();
  }

  static const _isOnboardingShownKey = "_isOnboardingShownKey";

  void isOnboardingShown() {
    final storage = GetStorage();

    final isShown = storage.read<bool>(_isOnboardingShownKey);

    if (isShown != null) {
      emit(AppSkipOnboarding());
      return;
    }
    storage.write(_isOnboardingShownKey, true);
    emit(AppShowOnboarding());
  }
}
