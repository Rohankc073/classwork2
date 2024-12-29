import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'area_of_circle_event.dart';

class CircleBloc extends Bloc<AreaOfCircleEvent, double> {
  CircleBloc() : super(0.0) {
    on<CalculateAreaOfCircleEvent>((event, emit) {
      final area = 3.14159 * event.radius * event.radius;
      emit(area);
    });
  }
}
