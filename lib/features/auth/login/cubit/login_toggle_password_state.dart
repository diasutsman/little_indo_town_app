part of 'login_toggle_password_cubit.dart';

sealed class LoginTogglePasswordState extends Equatable {
  const LoginTogglePasswordState();

  bool get isPasswordHidden => this is RegisterHidePassword;
  bool get isPasswordShown => this is RegisterShowPassword;

  @override
  List<Object> get props => [];
}

final class RegisterHidePassword extends LoginTogglePasswordState {}

final class RegisterShowPassword extends LoginTogglePasswordState {}
