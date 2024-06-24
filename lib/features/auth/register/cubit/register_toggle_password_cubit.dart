import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_toggle_password_state.dart';

class RegisterTogglePasswordCubit extends Cubit<RegisterTogglePasswordState> {
  RegisterTogglePasswordCubit() : super(RegisterHidePassword());

  void togglePassword() {
    emit(
      state.isPasswordHidden ? RegisterShowPassword() : RegisterHidePassword(),
    );
  }
}
