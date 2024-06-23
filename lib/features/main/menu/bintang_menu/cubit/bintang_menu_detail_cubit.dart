import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bintang_menu_detail_state.dart';

class BintangMenuDetailCubit extends Cubit<BintangMenuDetailState> {
  BintangMenuDetailCubit() : super(BintangMenuDetailInitial());
}
