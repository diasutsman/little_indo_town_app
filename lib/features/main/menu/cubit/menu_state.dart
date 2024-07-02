part of 'menu_cubit.dart';

sealed class MenuState extends Equatable {
  const MenuState();

  @override
  List<Object> get props => [];
}

final class LocationMenu extends MenuState {}

final class MenuFavoriteState extends MenuState {}

final class MenuMainState extends MenuState {}

final class MenuBintangBroState extends MenuState {}

final class MenuUrbanDurianState extends MenuState {}

final class MenuTegukState extends MenuState {}

final class OrderHistoryMenuState extends MenuState {}
