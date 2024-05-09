import 'package:crewmeister_absence_manager/services/absence_service.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  group('AbsenceService', () {
    final service = AbsenceService();

    test('fetchAbsences returns correct sublist', () {
      var absences = service.fetchAbsences(1);
      expect(absences.length, 10);
      expect(absences[0].memberName, 'John Doe');
    });

    test('getTotalAbsences returns correct total', () {
      var total = service.getTotalAbsences();
      expect(total, service.absences.length);
    });

    test('filterAbsencesByDate returns correct absences', () {
      var filtered = service.filterAbsencesByDate(DateTime(2021, 12, 1), DateTime(2022, 3, 5));
      expect(filtered.length, 2);
      expect(filtered[0].memberName, 'John Doe');
      expect(filtered[1].memberName, 'Jane Doe');
    });
  });
}