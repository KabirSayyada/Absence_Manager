part of 'absence_bloc.dart';


abstract class AbsenceState extends Equatable {
  const AbsenceState();

  @override
  List<Object> get props => [];
}

class AbsenceInitial extends AbsenceState {}

class AbsenceLoading extends AbsenceState {}

class AbsenceLoadSuccess extends AbsenceState {
  final List<Absence> absences;

  const AbsenceLoadSuccess(this.absences);

  @override
  List<Object> get props => [absences];
}

class AbsenceLoadFailure extends AbsenceState {}

class AbsenceFilterSuccess extends AbsenceState {
  final List<Absence> absences;

  const AbsenceFilterSuccess(this.absences);
}