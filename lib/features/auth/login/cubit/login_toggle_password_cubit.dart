import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_toggle_password_state.dart';

class LoginTogglePasswordCubit extends Cubit<LoginTogglePasswordState> {
  LoginTogglePasswordCubit() : super(RegisterHidePassword());

  void togglePassword() {
    emit(
      state.isPasswordHidden ? RegisterShowPassword() : RegisterHidePassword(),
    );
  }
}
