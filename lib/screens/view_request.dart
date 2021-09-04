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
        ));
  }
}
