import 'package:flutter/material.dart';

class AddReq extends StatefulWidget {
  const AddReq({Key? key}) : super(key: key);

  @override
  _AddReqState createState() => _AddReqState();
}

class _AddReqState extends State<AddReq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text("Adding Request", style: TextStyle(fontSize: 30)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Item Name",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Description",
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: const Icon(Icons.add)),
            ],
          ),
        ),
      ),
    );
  }
}
