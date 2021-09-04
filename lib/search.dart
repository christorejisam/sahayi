import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String>{
 // sample input..
  final list = ['in','out','up','down','back','front'];
  final recent_list = ['in','out'];
 
  @override
  List<Widget> buildActions(BuildContext context) {
    return[
    IconButton(onPressed: (){ query = ' ';},
     icon: Icon(Icons.clear),)
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
   return IconButton(onPressed: (){ close( context, ''); }, 
   
   icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow,
   progress: transitionAnimation,));
  }

  @override
  Widget buildResults(BuildContext context) {
    return  Container(child: Center(child: Text("Info"),),);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
     final suggetionlist = query.isEmpty?recent_list:
     list.where((p) => p.startsWith(query)).toList();

     return ListView.builder(itemBuilder: (context,index)=>ListTile(
       onTap: (){ showResults(context);},
       leading: Icon(Icons.help),
       title: RichText( text: TextSpan(
         text: suggetionlist[index].substring(0,query.length),
         style:  TextStyle(color: Colors.black,
         fontWeight: FontWeight.bold),
         children: [TextSpan(
           text: suggetionlist[index].substring(query.length),
           style: TextStyle(color: Colors.grey),
         )]
       ),),
     ), itemCount: suggetionlist.length,);

  }
}