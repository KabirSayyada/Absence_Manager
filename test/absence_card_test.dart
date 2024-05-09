import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:crewmeister_absence_manager/models/absence.dart';
import 'package:crewmeister_absence_manager/widgets/absence_card.dart';

void main() {
  testWidgets('AbsenceCard displays absence information correctly', (WidgetTester tester) async {
    final Absence testAbsence = Absence(
      memberName: 'John Doe',
      type: 'Sickness',
      startDate: DateTime(2022, 1, 1),
      endDate: DateTime(2022, 1, 5),
      memberNote: 'Feeling unwell',
      status: 'Pending',
      admitterNote: 'Get well soon',
    );

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: AbsenceCard(absence: testAbsence),
      ),
    ));

    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Sickness'), findsOneWidget);
   // expect(find.text('Pending'), findsOneWidget);
  });
}