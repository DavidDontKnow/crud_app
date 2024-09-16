import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
//get collection of notes
  final CollectionReference notes =
      FirebaseFirestore.instance.collection('notes');

//create a new note
  Future<void> addNote(String content) {
    return notes.add({
      'content': content,
      'timestamp': Timestamp.now(),
    });
  }

//read a note
  Stream<QuerySnapshot> getNotesStream() {
    final notesStream =
        notes.orderBy('timestamp', descending: true).snapshots();

    return notesStream;
  }

//update a note

  Future<void> updateNote(String docID, String newNote) {
    return notes.doc(docID).update({
      'content': newNote,
      'timestamp': Timestamp.now(),
    });
  }

//delete a note

  Future<void> deleteNote(String docID) {
    return notes.doc(docID).delete();
  }
}
