part of 'show_hide_password_cubit.dart';

sealed class ShowHidePasswordState extends Equatable {
  const ShowHidePasswordState();

  bool get isPasswordShown => this is ShowPassword;
  bool get isPasswordHidden => this is HidePassword;

  @override
  List<Object> get props => [];
}

final class ShowPassword extends ShowHidePasswordState {}

final class HidePassword extends ShowHidePasswordState {}
