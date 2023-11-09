import 'package:flutter/material.dart';


import 'homepage.dart';
import 'profile.dart';
import 'search.dart';


class MyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return DefaultTabController(
         length: 8,
         child: Scaffold(
           appBar: AppBar(
             title: Text("My App"),
             bottom: TabBar(
               isScrollable:true,
               tabs: [
                 Tab(icon: Icon(Icons.home),text: "Home"),
                 Tab(icon: Icon(Icons.person),text: "person"),
                 Tab(icon: Icon(Icons.search),text: "search"),
                 Tab(icon: Icon(Icons.contact_phone),text: "Contact"),
                 Tab(icon: Icon(Icons.settings),text: "setting"),
                 Tab(icon: Icon(Icons.home),text: "Home"),
                 Tab(icon: Icon(Icons.home),text: "Home"),
                 Tab(icon: Icon(Icons.home),text: "Home"),
               ],

             ),
           ),
           body: TabBarView(
             children: [
                 Home(),
                 Profile(),
                 Search(),
             ],

           ),

         )
     );
  }

}