import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

class AppLoggedInCubit extends Cubit<bool> {
  AppLoggedInCubit() : super(false) {
    _isLoggedIn();
  }
  static const _isLoggedInKey = "_isLoggedInKey";
  final storage = GetStorage();

  bool get isLoggedIn => state;
  void _isLoggedIn() {
    final isLoggedIn = storage.read<bool>(_isLoggedInKey);

    emit(isLoggedIn ?? false);
  }

  void login() {
    storage.write(_isLoggedInKey, true);
    emit(true);
  }

  void logout() {
    storage.write(_isLoggedInKey, false);
    emit(false);
  }
}
