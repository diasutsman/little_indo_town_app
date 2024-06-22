import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState());

  void setTab(MainTab tab) {
    print("tab: $tab");
    emit(MainState(tab: tab));
  }
}
