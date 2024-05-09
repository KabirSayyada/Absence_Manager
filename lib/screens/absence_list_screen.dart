import 'package:crewmeister_absence_manager/bloc/absence_bloc.dart';
import 'package:crewmeister_absence_manager/models/absence.dart';
import 'package:crewmeister_absence_manager/services/absence_service.dart';
import 'package:crewmeister_absence_manager/widgets/absence_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 

import 'package:flutter/material.dart';




class AbsenceListScreen extends StatefulWidget {
  const AbsenceListScreen({super.key});
  

  @override
  _AbsenceListScreenState createState() => _AbsenceListScreenState();
}

class _AbsenceListScreenState extends State<AbsenceListScreen> {
  int currentPage = 0;
  String filterType = '';

 @override
  void initState() {
    super.initState();
    //Future.microtask(() {
 //   context.read<AbsenceBloc>().add(AbsenceLoad());
    context.read<AbsenceBloc>().add(AbsenceCountRequested());
  //});
  }

  void loadMore() {

  BlocProvider.of<AbsenceBloc>(context).add(AbsenceLoadMore());
}


  void filter(String type) {
    filterType = type;
    context.read<AbsenceBloc>().add(AbsenceFilter(type));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Absences'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: filter,
            itemBuilder: (BuildContext context) {
              return ['Sickness', 'Vacation'].map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
          IconButton(
      icon: Icon(Icons.filter_list),
      onPressed: () async {
        // Show date picker dialog and get start and end dates
        DateTimeRange? dateRange = await showDateRangePicker(
          context: context,
          firstDate: DateTime(DateTime.now().year - 5),
          lastDate: DateTime(DateTime.now().year + 5),
        );

        if (dateRange != null) {
          // Dispatch AbsenceFilterByDate event with selected dates
          context.read<AbsenceBloc>().add(AbsenceFilterByDate(dateRange.start, dateRange.end));
        }
      },
    ),
  ],
    ),
      body: BlocBuilder<AbsenceBloc, AbsenceState>(
        builder: (context, state) {
          if (state is AbsenceFilterSuccess) {
            return ListView.builder(
            itemCount: state.absences.length,
            itemBuilder: (context, index) {
            return AbsenceCard(absence: state.absences[index]);
         },
        );
       }
           if (state is AbsenceCount) {
             return Text('Total Absences: ${state.count}');
           }
          if (state is AbsenceLoadSuccess) {
            return ListView.builder(
              itemCount: state.absences.length,
              itemBuilder: (context, index) {
                return AbsenceCard(absence: state.absences[index]); // Use AbsenceCard instead of ListTile
              },
            );
          } else if (state is AbsenceLoadFailure) {
            return Center(child: Text('Failed to load absences'));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: loadMore,
        tooltip: 'Load More',
        child: Icon(Icons.add),
      ),
    );
  }
}