part of 'register_toggle_password_cubit.dart';

sealed class RegisterTogglePasswordState extends Equatable {
  const RegisterTogglePasswordState();

  bool get isPasswordHidden => this is RegisterHidePassword;
  bool get isPasswordShown => this is RegisterShowPassword;

  @override
  List<Object> get props => [];
}

final class RegisterHidePassword extends RegisterTogglePasswordState {}

final class RegisterShowPassword extends RegisterTogglePasswordState {}
