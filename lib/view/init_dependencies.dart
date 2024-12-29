import 'package:classwork2/bloc/simple_interest_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/area_of_circle_bloc.dart';
import '../bloc/student_lists_bloc.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initBloc();
}

void _initBloc() {
  serviceLocator.registerLazySingleton(() => CircleBloc());
  serviceLocator.registerLazySingleton(() => InterestBloc());
  serviceLocator.registerLazySingleton(() => StudentBloc());
}
