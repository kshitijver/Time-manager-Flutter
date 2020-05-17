import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const kHomeScreenCardDecoration = BoxDecoration(
  boxShadow: <BoxShadow>[
    BoxShadow(
      color: Colors.black,
      offset: Offset(1.0, 6.0),
      blurRadius: 10.0,
    ),
  ],
  borderRadius: BorderRadius.all(Radius.circular(20)),
  image: DecorationImage(
    image: AssetImage(''),
    fit: BoxFit.cover,
  ),
);
const kTextFieldDecoration = InputDecoration(
  hintText: '',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const List<BottomNavigationBarItem> bottomItems = [
  BottomNavigationBarItem(
      backgroundColor: Colors.lightBlueAccent,
      icon: Icon(Icons.home),
      title: Text('')),
  BottomNavigationBarItem(
      backgroundColor: Colors.lightBlueAccent,
      icon: Icon(Icons.chat),
      title: Text('')),
  BottomNavigationBarItem(
      backgroundColor: Colors.lightBlueAccent,
      icon: Icon(Icons.event),
      title: Text('')),
  BottomNavigationBarItem(
      backgroundColor: Colors.lightBlueAccent,
      icon: Icon(Icons.assessment),
      title: Text('')),
];
