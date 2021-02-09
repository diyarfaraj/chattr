import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(8),
            child: Text("this works"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Firestore.instance
              .collection('chats/KOzDTRpFsWVfKeLoP3mJ/messages')
              .snapshots()
              .listen((data) {
            data.documents.forEach((doc) {
              print(doc['text']);
            });
          });
        },
      ),
    );
  }
}
