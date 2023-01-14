const String tableNotes='notes';

class NoteFields{

  static final List<String> values= [
    id, studentName
  ];

  static const String id= '_id';
  static const String studentName= 'studentName';
}

class Note{
  final int? id;
  final String studentName;

  const Note({
    this.id,
    required this.studentName,
  }
  );

  Note copy({
    int? id,
    String? studentName,

  })=>
    Note(
      id: id ?? this.id,
      studentName: studentName ?? this.studentName,
    );

    static Note fromJson(Map<String, Object?> json)=> Note(
      id: json[NoteFields.id] as int?,
      studentName: json[NoteFields.studentName] as String,

    );

  Map<String, Object?> toJson()=>{
      NoteFields.id: id,
      NoteFields.studentName: studentName,
  };
}