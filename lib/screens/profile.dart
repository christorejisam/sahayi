import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  MyProfile({Key? key}) : super(key: key);
  String name = '';
  String phone = '';
  String pin = '';
  //String city = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400],
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 250, left: 40),
                ),
                new CircleAvatar(
                  maxRadius: 70,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                ),
                Column(
                  children: [
                    Text(
                      "name",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Georgia"),
                    ),
                    Text(
                      "city",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                ),
                InkWell(
                    onTap: () {},
                    child: Card(
                      margin: EdgeInsets.only(left: 40, right: 40),
                      color: Colors.indigo,
                      shadowColor: Colors.grey,
                      child: ListTile(
                        title: Text("contact me: ph.no",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 20.0,
                                fontFamily: 'Julius Sans One',
                                color: Colors.white)),
                        leading: Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: InkWell(
                        onTap: () {},
                        child: Card(
                          margin: EdgeInsets.only(left: 40, right: 40),
                          color: Colors.indigo,
                          shadowColor: Colors.grey,
                          child: ListTile(
                            title: Text(
                              "Pincode:   661204",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20.0,
                                  fontFamily: 'Julius Sans One',
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.place,
                              color: Colors.white,
                            ),
                          ),
                        ))),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                ),
                Text(
                  '"We only have what we give."',
                  style: TextStyle(fontFamily: "Gabriola", fontSize: 20),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 70.0, bottom: 60.0),
                    child: Container(
                      height: 80,
                      width: 200,
                      child: InkWell(
                          onTap: () {},
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(10),
                            color: Colors.indigo,
                            shadowColor: Colors.grey,
                            child: ListTile(
                              title: Text(
                                "Goodbye👋",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20.0,
                                    fontFamily: 'Julius Sans One',
                                    color: Colors.white),
                              ),
                              // leading: Icon(
                              //  Icons.place,
                              //  color: Colors.white,
                              //),
                            ),
                          )),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
