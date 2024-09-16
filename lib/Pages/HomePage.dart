import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_app/services/firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  final FirestoreService firestoreService = FirestoreService();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //text controller for the note
  final TextEditingController textController = TextEditingController();

  void openNoteBox({String? docID}) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: TextField(
                controller: textController,
              ),
              actions: [
                //button to save the note
                ElevatedButton(
                    onPressed: () {
                      //add new note
                      if (docID == null) {
                        widget.firestoreService.addNote(textController.text);
                      } else {
                        //update the note
                        widget.firestoreService
                            .updateNote(docID, textController.text);
                      }
                      //clear the text field
                      textController.clear();
                      //close the dialog
                      Navigator.of(context).pop();
                    },
                    child: const Text('Add'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openNoteBox,
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirestoreService().getNotesStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List notesList = snapshot.data!.docs;

              //display the notesList
              return ListView.builder(
                itemCount: notesList.length,
                itemBuilder: (context, index) {
                  //get each individual note
                  DocumentSnapshot document = notesList[index];
                  String docID = document.id;

                  //get note from each document
                  Map<String, dynamic> data =
                      document.data() as Map<String, dynamic>;
                  String noteText = data['content'];

                  //display the note as list tile
                  return ListTile(
                      title: Text(noteText),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () => openNoteBox(docID: docID),
                              icon: const Icon(Icons.edit)),
                          IconButton(
                              onPressed: () =>
                                  widget.firestoreService.deleteNote(docID),
                              icon: const Icon(Icons.delete)),
                        ],
                      ));
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
