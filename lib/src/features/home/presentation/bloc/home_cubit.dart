
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  int _currentHomeIndex = 0;

  int get currentHomeIndex {
    return _currentHomeIndex;
  }

  changeHomeIndex({required int currentHomeIndex}) {
    _currentHomeIndex = currentHomeIndex;
    emit(HomeIndexChanged(homeIndex: currentHomeIndex));
  }
}
