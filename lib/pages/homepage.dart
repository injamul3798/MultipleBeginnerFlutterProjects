import 'package:flutter/material.dart';
import 'package:listview/pages/profile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 7), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
    });

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: Text("Go to profile"),
          ),
        ],
      ),
    );
  }
}
