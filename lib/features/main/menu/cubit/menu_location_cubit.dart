import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuLocationCubit extends Cubit<bool> {
  MenuLocationCubit() : super(false);

  final SearchController searchController = SearchController();
}
