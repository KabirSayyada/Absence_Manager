import 'package:flutter/material.dart';

class AddAbsenceScreen extends StatefulWidget {
  const AddAbsenceScreen({super.key});

  @override
  _AddAbsenceScreenState createState() => _AddAbsenceScreenState();
}

class _AddAbsenceScreenState extends State<AddAbsenceScreen> {
  // Define variables and controllers for input fields
  final TextEditingController _reasonController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    _reasonController.dispose();
    _startDateController.dispose();
    _endDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Absence'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _reasonController,
              decoration: const InputDecoration(
                labelText: 'Reason',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _startDateController,
              decoration: const InputDecoration(
                labelText: 'Start Date',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _endDateController,
              decoration: const InputDecoration(
                labelText: 'End Date',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle the button press to add the absence
                String reason = _reasonController.text;
                String startDate = _startDateController.text;
                String endDate = _endDateController.text;

                // Perform necessary operations with the absence data
                // For example, you can save it to a database or send it to an API

                // Clear the input fields
                _reasonController.clear();
                _startDateController.clear();
                _endDateController.clear();

                // Show a success message or navigate to a different screen
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Absence added successfully')),
                );
              },
              child: const Text('Add Absence'),
            ),
          ],
        ),
      ),
    );
  }
}