import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState());

  void setTab(MainTab tab) {
    Logger().d("tab: $tab");
    emit(MainState(tab: tab));
  }
}
