import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bintang_menu_state.dart';

class BintangMenuCubit extends Cubit<BintangMenuState> {
  BintangMenuCubit() : super(BintangMenuInitial());
}
