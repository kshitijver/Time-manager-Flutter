import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:timemanager/welcome_screen.dart';


void f({@required int x}) {}

void g(x) {
  x.f();
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Row(
          children: <Widget>[
            Icon(
              Icons.home,
            ),
            Text(
              'HOME',
              style: TextStyle(
                fontFamily: 'Pangolin',
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 10.0,
            color: Colors.white,
          )
        ],
      ),
      backgroundColor: Colors.blue[200],
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              child: Row(
                children: <Widget>[
                  Icon(Icons.arrow_back_ios),
                  Text('Back'),
                ],
              ),

              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
                },
            ),

          ],
        ),
      ),
    );
  }
}
