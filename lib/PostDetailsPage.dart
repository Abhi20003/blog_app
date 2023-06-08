import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PostDetails extends StatefulWidget {
  DocumentSnapshot? snapshot;
  PostDetails({this.snapshot});
  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  @override
  Widget build(BuildContext context) {
    dynamic data = widget.snapshot!.data();
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Details'),
        backgroundColor: Colors.green,
      ),
      body: Card(
        elevation: 10.0,
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Text(['title'][0]),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    data['title'],
                    style: TextStyle(fontSize: 22.0, color: Colors.green),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.0),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                data['content'],
                style: TextStyle(fontSize: 18.0),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
