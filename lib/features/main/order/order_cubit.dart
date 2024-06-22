import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderCubit extends Cubit<bool> {
  OrderCubit() : super(false);

  final SearchController searchController = SearchController();
}
