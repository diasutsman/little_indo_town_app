import 'package:flutter_bloc/flutter_bloc.dart';

class AppLoggedInCubit extends Cubit<bool> {
  AppLoggedInCubit() : super(false);

  void login() => emit(true);
  void logout() => emit(false);
}
