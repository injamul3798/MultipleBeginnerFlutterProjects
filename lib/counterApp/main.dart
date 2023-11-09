import 'package:flutter/material.dart';
import 'package:listview/pages/reseponsivegrid.dart';



void main() {
  runApp(const MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       // title: Text(),
        debugShowCheckedModeBanner: false,
        home: CounterApp(),
        //initialRoute: MyRoutes.,
    );
    // home:  MyHomePage());
  }
}

class CounterApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
       return CounterAppUI();
  }
}

class CounterAppUI extends State<CounterApp>{

  int countApp=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
        ),
        body: Center(
          child:
            Text(countApp.toString()),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              countApp++;
            });
            //countApp++;
          },
          child: Icon(Icons.add),
        ),
      );
  }

}

