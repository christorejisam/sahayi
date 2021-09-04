import 'package:flutter/material.dart';
import 'package:sahayi/screens/home/home_page.dart';
import 'package:sahayi/screens/signup.dart';
import 'package:sahayi/screens/view_request.dart';
import 'package:sawo/sawo.dart';

Sawo sawo = Sawo(
  apiKey: "686a43b7-138f-446b-bf5b-0ad14b9f3ebf",
  secretKey: "*********",
);

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String user = "";

  void payloadCallback(context, payload) {
    if (payload == null || (payload is String && payload.length == 0)) {
      payload = "Login Failed :(";
    }
    setState(() {
      user = payload;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Text("UserData :- $user"),
              ElevatedButton(
                onPressed: () {
                  sawo.signIn(
                    context: context,
                    identifierType: 'email',
                    callback: payloadCallback,
                  );
                },
                child: Text('Email Login'),
              ),
              ElevatedButton(
                onPressed: () {
                  sawo.signIn(
                    context: context,
                    identifierType: 'phone_number_sms',
                    callback: payloadCallback,
                  );
                },
                child: Text('Phone Login'),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
