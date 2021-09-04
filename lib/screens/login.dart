import 'package:flutter/material.dart';
import 'package:sahayi/screens/signup.dart';
import 'package:sahayi/screens/view_request.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _frmKey = GlobalKey();
  var _email = "";
  var _password = "";
  final TextEditingController emailCont = TextEditingController();
  final TextEditingController passwordCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _frmKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login", style: TextStyle(fontSize: 30)),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Your Name",
                  prefixIcon: Padding(
                      padding: EdgeInsets.all(5), child: Icon(Icons.person)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Your Phone No.",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(Icons.email),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.password_outlined,
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ViewRequ()));
                  },
                  child: Text("Login")),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signup(),
                    ),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Want to create an account?',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
    ;
  }
}
