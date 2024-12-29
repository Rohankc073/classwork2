import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'simple_interest_event.dart';

class InterestBloc extends Bloc<SimpleInterestEvent, double> {
  InterestBloc() : super(0.0) {
    on<CalculateSimpleInterestEvent>((event, emit) {
      final simpleInterest = (event.principal * event.rate * event.time) / 100;
      emit(simpleInterest);
    });
  }
}
