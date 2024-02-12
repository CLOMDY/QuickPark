class ProgrammingLanguage {
  final String name;
  final List<Chapter> chapters;

  ProgrammingLanguage({required this.name, required this.chapters});

  factory ProgrammingLanguage.fromJson(Map<String, dynamic> json) {
    // Extract name and chapters data from the JSON
    String name = json['name'];
    List<dynamic> chapterList = json['chapters'];
    
    // Convert the list of chapters to a list of Chapter objects
    List<Chapter> chapters = chapterList.map((chapterJson) => Chapter.fromJson(chapterJson)).toList();

    return ProgrammingLanguage(name: name, chapters: chapters);
  }
}

class Chapter {
  final String title;
  final List<Note> notes;

  Chapter({required this.title, required this.notes});

  factory Chapter.fromJson(Map<String, dynamic> json) {
    // Extract title and notes data from the JSON
    String title = json['title'];
    List<dynamic> noteList = json['notes'];
    
    // Convert the list of notes to a list of Note objects
    List<Note> notes = noteList.map((noteJson) => Note.fromJson(noteJson)).toList();

    return Chapter(title: title, notes: notes);
  }
}

class Note {
  final String title;
  final String content;
  final DateTime createdAt;
  final String userID;

  Note({required this.title, required this.content, required this.createdAt, required this.userID});

  factory Note.fromJson(Map<String, dynamic> json) {
    // Extract title, content, createdAt, and userID from the JSON
    String title = json['title'];
    String content = json['content'];
    DateTime createdAt = DateTime.parse(json['createdAt']);
    String userID = json['userID'];

    return Note(title: title, content: content, createdAt: createdAt, userID: userID);
  }
}
