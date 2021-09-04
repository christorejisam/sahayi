import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sahayi/screens/add_req.dart';
import 'package:sahayi/screens/search.dart';

class ViewRequ extends StatelessWidget {
  const ViewRequ({Key? key}) : super(key: key);
  //final url = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.white,
          title: Center(child: Text("Help me out!!")),
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                },
                icon: Icon(Icons.search))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddReq()),
            );
          },
          child: const Icon(Icons.add),
        ),
        body: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('medicine').snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              return ListView(
                children: snapshot.data!.docs.map((document) {
                  return Card(
                      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text(
                              document['item'],
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.grey[600],
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Text(
                              document['desc'],
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey[800],
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Text(
                              document['name'],
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey[800],
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Text(
                              document['phone'],
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey[800],
                              ),
                            ),
                          ],
                        ),
                      ));
                }).toList(),
              );
            }));
  }
}
