part of 'absence_bloc.dart';




abstract class AbsenceEvent extends Equatable {
  const AbsenceEvent();

  @override
  List<Object> get props => [];
}

class AbsenceLoad extends AbsenceEvent {}

class AbsenceFilter extends AbsenceEvent {
  final String type;

  const AbsenceFilter(this.type);

  @override
  List<Object> get props => [type];
}

class AbsenceLoadMore extends AbsenceEvent {}

class AbsenceCount extends AbsenceState {
  final int count;
  const AbsenceCount(this.count);
  @override
  List<Object> get props => [count];
}

class AbsenceCountRequested extends AbsenceEvent {}

class AbsenceFilterByDate extends AbsenceEvent {
  final DateTime startDate;
  final DateTime endDate;

  AbsenceFilterByDate(this.startDate, this.endDate);
}
