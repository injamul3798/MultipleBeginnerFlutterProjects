import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: AspectRatio(
        aspectRatio: 16/9,
        child: Container(
          child: Text("Welcome to Profile"),
        ),
      ),
    );
  }

}