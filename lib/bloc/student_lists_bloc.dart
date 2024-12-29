// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:classwork2/bloc/student_lists_event.dart';
import 'package:classwork2/bloc/student_lists_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentInitial()) {
    // Event to handle adding a student
    on<AddStudentEvent>((event, emit) {
      if (state is StudentLoaded) {
        // If students are already loaded, update the list
        final currentState = state as StudentLoaded;
        final updatedList =
            List<Map<String, dynamic>>.from(currentState.students)
              ..add({
                'name': event.name,
                'age': event.age,
                'address': event.address,
              });
        emit(StudentLoaded(updatedList));
      } else {
        // If no students are loaded, initialize with the first student
        emit(StudentLoaded([
          {'name': event.name, 'age': event.age, 'address': event.address}
        ]));
      }
    });

    // Event to handle removing a student
    on<RemoveStudentEvent>((event, emit) {
      if (state is StudentLoaded) {
        final currentState = state as StudentLoaded;
        final updatedList =
            List<Map<String, dynamic>>.from(currentState.students)
              ..removeAt(event.index);
        emit(StudentLoaded(updatedList));
      } else {
        // Emit an error state if no students are loaded
        emit(const StudentError('Cannot remove a student from an empty list.'));
      }
    });
  }
}
