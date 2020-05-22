import 'package:flutter/material.dart';
import 'package:flutter_login2/main.dart';

class HomePage extends StatefulWidget {
  String username, password;
  HomePage({this.username, this.password});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 70),
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Image(image: AssetImage("images/bunga3a.jpg")),
            ),
          ),
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Text(
                    'HOME PAGE',
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only( top: 90.0),
                child: Center(
                  child: Text(
                    'Username : ' + widget.username,
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Center(
                  child: Text('Password : ' + widget.password,
                      style:
                          TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 190.0),
                child: Center(
                  child: RaisedButton(
                    color: Colors.pink,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));

                          },
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
