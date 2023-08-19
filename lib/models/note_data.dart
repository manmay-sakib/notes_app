import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'note.dart';

class NoteData extends ChangeNotifier {
  // overall list of notes
  List<Note> allNotes = [
    // default first note
    Note(id: 0, text: 'First Note'),
  ];

  // get notes
  List<Note> getAllNotes() {
    return allNotes;
  }

  // add a new note
  void addNewNote(Note note) {
    allNotes.add(note);
    notifyListeners();
  }

  // update a note
  void updateNote(Note note, String text) {
    // go thru the list of all notes
    for (int i = 0; i < allNotes.length; i++) {
      // find the relevant note
      if (allNotes[i].id == note.id) {
        // replace text
        allNotes[i].text = text;
      }
    }
    notifyListeners();
  }

  // delete note
  void deleteNote(Note note) {
    allNotes.remove(note);
    notifyListeners();
  }
}
