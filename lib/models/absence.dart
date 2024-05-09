class Absence {
  final String memberName;
  final String type;
  final DateTime startDate;
  final DateTime endDate;
  final String memberNote;
  final String status;
  final String admitterNote;

 
  Absence({
    required this.memberName,
    required this.type,
    required this.startDate,
    required this.endDate,
    this.memberNote = '',
    required this.status,
    this.admitterNote = '',
  });

}