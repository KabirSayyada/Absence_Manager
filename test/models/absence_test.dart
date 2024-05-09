import 'package:crewmeister_absence_manager/models/absence.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  group('Absence', () {
    final DateTime startDate = DateTime(2022, 1, 1);
    final DateTime endDate = DateTime(2022, 1, 5);
    final Absence absence = Absence(
      memberName: 'John Doe',
      type: 'Sickness',
      startDate: startDate,
      endDate: endDate,
      memberNote: 'Feeling unwell',
      status: 'Pending',
      admitterNote: 'Get well soon',
    );

    test('should have correct memberName', () {
      expect(absence.memberName, 'John Doe');
    });

    test('should have correct type', () {
      expect(absence.type, 'Sickness');
    });

    test('should have correct startDate', () {
      expect(absence.startDate, startDate);
    });

    test('should have correct endDate', () {
      expect(absence.endDate, endDate);
    });

    test('should have correct memberNote', () {
      expect(absence.memberNote, 'Feeling unwell');
    });

    test('should have correct status', () {
      expect(absence.status, 'Pending');
    });

    test('should have correct admitterNote', () {
      expect(absence.admitterNote, 'Get well soon');
    });
  });
}