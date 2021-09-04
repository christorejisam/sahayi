import 'package:flutter/material.dart';
import 'package:sahayi/core/conts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              padding: EdgeInsets.only(top: 25, bottom: 30),
              child: Stack(
                children: <Widget>[
                  Image.asset("assets/images/aa.png"),
                  _buildHeader(),
                ],
              ),
            ),
          ]),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "SAHAYI",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Coronavirus Relief Fund",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "GIVE A LITTE FOR THE FUTURE",
            style: TextStyle(
              color: Colors.white,
              height: 1.5,
            ),
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: <Widget>[
              Expanded(
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text(
                    "Take a hand",
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text(
                    "Give a hand",
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
