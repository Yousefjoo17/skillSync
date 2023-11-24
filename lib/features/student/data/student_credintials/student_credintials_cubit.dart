import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'student_credintials_state.dart';

class StudentCredintialsCubit extends Cubit<StudentCredintialsState> {
  StudentCredintialsCubit() : super(StudentCredintialsInitial());

  Future<void> Register() async{
    emit(StudentCredintialsRegisterLoading());
    
  }
}
