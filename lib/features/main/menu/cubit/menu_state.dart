part of 'menu_cubit.dart';

sealed class MenuState extends Equatable {
  const MenuState();

  @override
  List<Object> get props => [];
}

final class LocationMenu extends MenuState {}
final class MenuMain extends MenuState {}
final class MenuBintangBro extends MenuState {}
final class MenuUrbanDurian extends MenuState {}
final class MenuTeguk extends MenuState {}
