import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'show_hide_password_state.dart';

class ShowHidePasswordCubit extends Cubit<ShowHidePasswordState> {
  ShowHidePasswordCubit() : super(HidePassword());

  void showPassword() => emit(ShowPassword());

  void hidePassword() => emit(HidePassword());

  void togglePassword() => emit(
        state.isPasswordHidden ? ShowPassword() : HidePassword(),
      );
}
