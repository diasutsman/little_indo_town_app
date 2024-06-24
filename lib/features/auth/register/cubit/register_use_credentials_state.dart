part of 'register_use_credentials_cubit.dart';

sealed class RegisterUseCredentialsState extends Equatable {
  const RegisterUseCredentialsState();

  bool get useEmail => this is RegisterUseEmail;
  bool get usePhoneNumber => this is RegisterUsePhoneNumber;

  @override
  List<Object> get props => [];
}

final class RegisterUseEmail extends RegisterUseCredentialsState {}

final class RegisterUsePhoneNumber extends RegisterUseCredentialsState {}
