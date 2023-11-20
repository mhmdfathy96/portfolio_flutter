import '../../injector_container.dart';
import 'presentation/bloc/home_cubit.dart';

void initHomeInjections() {
  ///Cubits
  getIt.registerFactory<HomeCubit>(() => HomeCubit());
}
