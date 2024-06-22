import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationCubit extends Cubit<bool> {
  LocationCubit() : super(false);

  final SearchController searchController = SearchController();
}
