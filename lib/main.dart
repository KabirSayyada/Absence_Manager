import 'package:crewmeister_absence_manager/bloc/absence_bloc.dart';
import 'package:crewmeister_absence_manager/screens/absence_list_screen.dart';
import 'package:crewmeister_absence_manager/services/absence_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Absence List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AbsenceListScreen(),
    );
  }
}