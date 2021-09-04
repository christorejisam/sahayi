import 'package:flutter/material.dart';
import 'package:sahayi/search.dart';

class ViewRequ extends StatelessWidget {
  const ViewRequ({ Key? key }) : super(key: key);
  //final url = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        title: Center(child: Text("Help me out!!")),
        actions: [
          IconButton(onPressed: (){showSearch(context: context, delegate: DataSearch());}, 
          icon: Icon(Icons.search))
        ],
      ),
      //body: Container(
      //  decoration: BoxDecoration(
       //   image: DecorationImage(
       //     image: NetworkImage(url),),),)
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
        )
    );
  }
}

