import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:infinity/util/data.dart';

class ProgrammingLanguageScreen extends StatelessWidget {
  final ProgrammingLanguage? programmingLanguage;

  ProgrammingLanguageScreen({required this.programmingLanguage});

  @override
  Widget build(BuildContext context) {
    if (programmingLanguage == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Programming language data is null.'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(programmingLanguage!.name),
      ),
      body: ListView.builder(
        itemCount: programmingLanguage!.chapters.length,
        itemBuilder: (BuildContext context, int index) {
          Chapter chapter = programmingLanguage!.chapters[index];
          return ListTile(
            title: Text(chapter.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChapterScreen(chapter: chapter),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ChapterScreen extends StatelessWidget {
  final Chapter chapter;

  const ChapterScreen({Key? key, required this.chapter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chapter.title),
      ),
      body: ListView.builder(
        itemCount: chapter.notes.length,
        itemBuilder: (BuildContext context, int index) {
          Note note = chapter.notes[index];
          return ListTile(
            title: Text(note.title),
            subtitle: Text(note.content),
            onTap: () {
              // Handle tapping on a note if needed
            },
          );
        },
      ),
    );
  }
}
