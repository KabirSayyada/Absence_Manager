import 'package:crewmeister_absence_manager/models/absence.dart';


class AbsenceService {

    List<Absence> absences = [
      Absence(
        memberName: 'John Doe',
        type: 'Sickness',
        startDate: DateTime(2022, 1, 1),
        endDate: DateTime(2022, 1, 10),
        memberNote: 'Flu',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
      ),
      Absence(
        memberName: 'Jane Doe',
        type: 'Vacation',
        startDate: DateTime(2022, 2, 1),
        endDate: DateTime(2022, 2, 14),
        memberNote: 'Family trip',
        status: 'Requested',
      ),
      // Add more Absence instances here...
      Absence(
        memberName: 'Alice Smith',
        type: 'Sickness',
        startDate: DateTime(2022, 3, 1),
        endDate: DateTime(2022, 3, 5),
        memberNote: 'Cold',
        status: 'Confirmed',
        admitterNote: 'Take care',
      ),
      Absence(
        memberName: 'Bob Johnson',
        type: 'Vacation',
        startDate: DateTime(2022, 4, 1),
        endDate: DateTime(2022, 4, 7),
        memberNote: 'Beach trip',
        status: 'Requested',
      ),
      Absence(
        memberName: 'Eva Davis',
        type: 'Sickness',
        startDate: DateTime(2022, 5, 1),
        endDate: DateTime(2022, 5, 3),
        memberNote: 'Fever',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
      ),
      // Add more Absence instances here...
      Absence(
        memberName: 'Michael Brown',
        type: 'Vacation',
        startDate: DateTime(2022, 6, 1),
        endDate: DateTime(2022, 6, 5),
        memberNote: 'Exploring new city',
        status: 'Requested',
      ),
      Absence(
        memberName: 'Sarah Wilson',
        type: 'Sickness',
        startDate: DateTime(2022, 7, 1),
        endDate: DateTime(2022, 7, 3),
        memberNote: 'Stomachache',
        status: 'Confirmed',
        admitterNote: 'Take care',
      ),
      Absence(
        memberName: 'David Lee',
        type: 'Vacation',
        startDate: DateTime(2022, 8, 1),
        endDate: DateTime(2022, 8, 7),
        memberNote: 'Hiking trip',
        status: 'Requested',
      ),
      Absence(
        memberName: 'Emily Chen',
        type: 'Sickness',
        startDate: DateTime(2022, 9, 1),
        endDate: DateTime(2022, 9, 3),
        memberNote: 'Headache',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
      ),
      Absence(
        memberName: 'Alex Kim',
        type: 'Vacation',
        startDate: DateTime(2022, 10, 1),
        endDate: DateTime(2022, 10, 5),
        memberNote: 'Ski trip',
        status: 'Requested',
      ),
      Absence(
        memberName: 'Olivia Wang',
        type: 'Sickness',
        startDate: DateTime(2022, 11, 1),
        endDate: DateTime(2022, 11, 3),
        memberNote: 'Allergy',
        status: 'Confirmed',
        admitterNote: 'Take care',
      ),
      Absence(
        memberName: 'Daniel Liu',
        type: 'Vacation',
        startDate: DateTime(2022, 12, 1),
        endDate: DateTime(2022, 12, 7),
        memberNote: 'Cruise trip',
        status: 'Requested',
      ),
      Absence(
        memberName: 'Sophia Chen',
        type: 'Sickness',
        startDate: DateTime(2023, 1, 1),
        endDate: DateTime(2023, 1, 3),
        memberNote: 'Cough',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
      ),
      Absence(
        memberName: 'William Kim',
        type: 'Vacation',
        startDate: DateTime(2023, 2, 1),
        endDate: DateTime(2023, 2, 5),
        memberNote: 'Road trip',
        status: 'Requested',
      ),
      Absence(
        memberName: 'Ava Wang',
        type: 'Sickness',
        startDate: DateTime(2023, 3, 1),
        endDate: DateTime(2023, 3, 3),
        memberNote: 'Fever',
        status: 'Confirmed',
        admitterNote: 'Take care',
      ),
      Absence(
        memberName: 'James Liu',
        type: 'Vacation',
        startDate: DateTime(2023, 4, 1),
        endDate: DateTime(2023, 4, 7),
        memberNote: 'Beach vacation',
        status: 'Requested',
      ),
      Absence(
        memberName: 'Mia Chen',
        type: 'Sickness',
        startDate: DateTime(2023, 5, 1),
        endDate: DateTime(2023, 5, 3),
        memberNote: 'Stomach flu',
        status: 'Be back in time',
            ),
            Absence(
        memberName: 'Liam Wilson',
        type: 'Vacation',
        startDate: DateTime(2023, 6, 1),
        endDate: DateTime(2023, 6, 5),
        memberNote: 'Beach trip',
        status: 'Requested',
            ),
            Absence(
        memberName: 'Emma Lee',
        type: 'Sickness',
        startDate: DateTime(2023, 7, 1),
        endDate: DateTime(2023, 7, 3),
        memberNote: 'Fever',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
            ),
            Absence(
        memberName: 'Noah Chen',
        type: 'Vacation',
        startDate: DateTime(2023, 8, 1),
        endDate: DateTime(2023, 8, 7),
        memberNote: 'Mountain hiking',
        status: 'Requested',
            ),
            Absence(
        memberName: 'Isabella Wang',
        type: 'Sickness',
        startDate: DateTime(2023, 9, 1),
        endDate: DateTime(2023, 9, 3),
        memberNote: 'Cold',
        status: 'Confirmed',
        admitterNote: 'Take care',
            ),
            Absence(
        memberName: 'Benjamin Liu',
        type: 'Vacation',
        startDate: DateTime(2023, 10, 1),
        endDate: DateTime(2023, 10, 5),
        memberNote: 'Ski trip',
        status: 'Requested',
            ),
            Absence(
        memberName: 'Charlotte Chen',
        type: 'Sickness',
        startDate: DateTime(2023, 11, 1),
        endDate: DateTime(2023, 11, 3),
        memberNote: 'Headache',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
            ),
            Absence(
        memberName: 'Henry Kim',
        type: 'Vacation',
        startDate: DateTime(2023, 12, 1),
        endDate: DateTime(2023, 12, 7),
        memberNote: 'Cruise trip',
        status: 'Requested',
            ),
            Absence(
        memberName: 'Amelia Chen',
        type: 'Sickness',
        startDate: DateTime(2024, 1, 1),
        endDate: DateTime(2024, 1, 3),
        memberNote: 'Cough',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
            ),
            Absence(
        memberName: 'Daniel Wilson',
        type: 'Vacation',
        startDate: DateTime(2024, 2, 1),
        endDate: DateTime(2024, 2, 5),
        memberNote: 'Road trip',
        status: 'Requested',
            ),
            Absence(
        memberName: 'Sophia Wang',
        type: 'Sickness',
        startDate: DateTime(2024, 3, 1),
        endDate: DateTime(2024, 3, 3),
        memberNote: 'Fever',
        status: 'Confirmed',
        admitterNote: 'Take care',
            ),
            Absence(
        memberName: 'James Chen',
        type: 'Vacation',
        startDate: DateTime(2024, 4, 1),
        endDate: DateTime(2024, 4, 7),
        memberNote: 'Beach vacation',
        status: 'Requested',
            ),
            Absence(
        memberName: 'Mia Liu',
        type: 'Sickness',
        startDate: DateTime(2024, 5, 1),
        endDate: DateTime(2024, 5, 3),
        memberNote: 'Flu',
        status: 'Confirmed',
        admitterNote: 'Take care',
            ),
          ];

           List<Absence> fetchAbsences(int page) {
             int start = (page - 1) * 10;
             int end = start + 10;
             return absences.sublist(start, end);
  }

  int getTotalAbsences() {
  return absences.length;
}

List<Absence> filterAbsencesByDate(DateTime startDate, DateTime endDate) {
  return absences.where((absence) {
    return absence.startDate.isAfter(startDate) && absence.endDate.isBefore(endDate);
  }).toList();
}
}
        