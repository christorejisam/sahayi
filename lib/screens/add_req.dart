import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AddReq extends StatefulWidget {
  const AddReq({Key? key}) : super(key: key);

  @override
  _AddReqState createState() => _AddReqState();
}

class _AddReqState extends State<AddReq> {
  String item = "";
  String _name = "";
  String phone = "";
  String pincode = "";

  String desc = "";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Text("Adding Request", style: TextStyle(fontSize: 30)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _name = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Phone no'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      phone = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Pincode'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      pincode = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Item'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      item = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Description'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      desc = value.toString();
                    },
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo[200],
                    ),
                    onPressed: () {
                      FirebaseFirestore.instance.collection('medicine').add({
                        'name': _name,
                        'phone': phone,
                        'item': item,
                        'desc': desc,
                        'pincode': pincode,
                      });
                    },
                    child: const Icon(Icons.add)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
