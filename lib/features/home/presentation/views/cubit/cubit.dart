import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentoracademy/features/call/presentation/views/call.dart';
import 'package:mentoracademy/features/conv/presentation/views/conv.dart';
import 'package:mentoracademy/features/home/presentation/views/cubit/states.dart';
import 'package:mentoracademy/features/status/presentation/views/status.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  //bottomNav
  int currentIndex = 0;

  List<Widget> screens = [
    Conv(),
    Status(),
    Call(),
  ];

  void changeBottomNav(int index) {
   currentIndex = index;
   emit(HomeChangeBottomNavState());
  }
}
