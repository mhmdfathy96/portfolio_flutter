part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {

}
class HomeIndexChanged extends HomeState {
  final int homeIndex;

  const HomeIndexChanged({required this.homeIndex});

  @override
  List<Object> get props => [homeIndex];
}
