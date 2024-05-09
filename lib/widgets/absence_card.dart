import 'package:crewmeister_absence_manager/models/absence.dart';
import 'package:flutter/material.dart';




class AbsenceCard extends StatelessWidget {
  final Absence absence;

  const AbsenceCard({super.key, required this.absence});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              absence.memberName,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              absence.type,
              style: TextStyle(
                fontSize: 18,
                color: absence.type == 'Sickness' ? Colors.red : Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Date: ${absence.startDate.toString()}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}