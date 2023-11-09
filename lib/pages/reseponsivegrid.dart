import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ResponsiveGrdid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Design(),
    );
  }

}

class Design extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
              lg: 12,
              child: Container(
                height: 200,
                color: Colors.green,
              )
          ),
          ResponsiveGridCol(
              xl:4,lg: 6,md:8 ,sm: 9,xs: 12,
              child: Container(
                height: 200,
                color: Colors.blue,
              )
          ),

        ],

      ),
    );
  }

}