import 'package:flutter/material.dart';
import 'package:timemanager/Home_page.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF92D1D8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'TI.MA.: Manage Your Time.',
            style: TextStyle(),
          ),
          Expanded(
            child: Container(
              child: Image(
                image: AssetImage('images/clock.jpg'),
              ),
            ),
          ),
          Center(
            child: Text(
              'Welcome to TIMA',
                  style: TextStyle(
                    fontFamily: 'Pangolin',
fontSize: 16.0,
                  ),
            ),
          ),
          Center(
            child: Text(
              'The Perfect Time Management Platform',
              style: TextStyle(
                fontFamily: 'Pangolin',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 18.0),
            child: FlatButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Card(
                color: Colors.blue.shade900,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 120.0),
                  child: Text(
                    'Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
