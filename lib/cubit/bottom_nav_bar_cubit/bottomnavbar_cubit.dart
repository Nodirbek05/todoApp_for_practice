import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/screens/grid_page/grid_home_page.dart';
import 'package:todoapp/screens/home/home_body.dart';
import 'package:todoapp/screens/home/home_page.dart';

part 'bottomnavbar_state.dart';

class BottomnavbarCubit extends Cubit<BottomnavbarState> {
  int pageIndex = 0;
  int selectedItem = 0;

  BottomnavbarCubit() : super(BottomnavbarInitial());

  List pages = const [
    HomeBodyPage(),
    GridPage(),
   
  ];

  changePages(int tappedIndex) {
    pageIndex = tappedIndex;
    emit(BottomnavbarInitial());
  }


}
