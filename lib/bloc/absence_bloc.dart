import 'dart:async';
import 'package:crewmeister_absence_manager/models/absence.dart';
import 'package:crewmeister_absence_manager/services/absence_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'absence_event.dart';
part 'absence_state.dart';

class AbsenceBloc extends Bloc<AbsenceEvent, AbsenceState> {
  final AbsenceService _absenceService;
   List<Absence> absences = [];
  int currentPage = 1;
  bool hasReachedMax = false;

  AbsenceBloc(this._absenceService) : super(AbsenceInitial());
  
  @override
  Stream<AbsenceState> mapEventToState(AbsenceEvent event) async* {
    if (event is AbsenceLoad) {
      yield AbsenceLoading();
      try {
        final absences = await _absenceService.fetchAbsences(currentPage);
        yield AbsenceLoadSuccess(absences);
      } catch (_) {
        yield AbsenceLoadFailure();
      }
    }
        if (event is AbsenceLoadMore) {
    yield AbsenceLoading();
    try {
      currentPage++;
      final absences = await _absenceService.fetchAbsences(currentPage);
      yield AbsenceLoadSuccess(absences);
    } catch (_) {
      yield AbsenceLoadFailure();
    }
    } else if (event is AbsenceFilter) {
      yield AbsenceLoading();
      try {
        final absences = _absenceService.fetchAbsences(currentPage).where((absence) => absence.type == event.type).toList();
        yield AbsenceLoadSuccess(absences);
      } catch (_) {
        yield AbsenceLoadFailure();
      }
    }if (event is AbsenceCountRequested) {
  int count = _absenceService.getTotalAbsences();
  yield AbsenceCount(count);
}if (event is AbsenceFilterByDate) {
  try {
    final absences = await _absenceService.filterAbsencesByDate(event.startDate, event.endDate);
    yield AbsenceFilterSuccess(absences);
  } catch (_) {
    yield AbsenceLoadFailure();
  }
}

  }
}
