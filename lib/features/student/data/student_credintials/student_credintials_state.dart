part of 'student_credintials_cubit.dart';

@immutable
sealed class StudentCredintialsState {}

final class StudentCredintialsInitial extends StudentCredintialsState {}

final class StudentCredintialsRegisterLoading extends StudentCredintialsState {}

final class StudentCredintialsRegisterFailutre extends StudentCredintialsState {}

final class StudentCredintialRegisterSuccess extends StudentCredintialsState {}

///////////////////////
///
final class StudentCredintialsLoginLoading extends StudentCredintialsState {}

final class StudentCredintialsLoginFailutre extends StudentCredintialsState {}

final class StudentCredintialLoginSuccess extends StudentCredintialsState {}