class ProgrammingLanguage {
  final String name;
  final List<Chapter> chapters;

  ProgrammingLanguage({required this.name, required this.chapters});

  factory ProgrammingLanguage.fromJson(Map<String, dynamic> json) {
    String name = json['name'];
    List<dynamic> chapterList = json['chapters'];

    List<Chapter> chapters = chapterList
        .map((chapterJson) => Chapter.fromJson(chapterJson))
        .toList();

    return ProgrammingLanguage(name: name, chapters: chapters);
  }
}

class Chapter {
  final String title;
  final List<Note> notes;

  Chapter({required this.title, required this.notes});

  factory Chapter.fromJson(Map<String, dynamic> json) {
    String title = json['title'];
    List<dynamic> noteList = json['notes'];

    List<Note> notes =
        noteList.map((noteJson) => Note.fromJson(noteJson)).toList();

    return Chapter(title: title, notes: notes);
  }
}

class Note {
  final String title;
  final String content;
  final DateTime createdAt;
  final String userID;

  Note(
      {required this.title,
      required this.content,
      required this.createdAt,
      required this.userID});

  factory Note.fromJson(Map<String, dynamic> json) {
    String title = json['title'];
    String content = json['content'];
    DateTime createdAt = DateTime.parse(json['createdAt']);
    String userID = json['userID'];

    return Note(
        title: title, content: content, createdAt: createdAt, userID: userID);
  }
}
