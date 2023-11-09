import 'package:flutter/material.dart';
import 'package:listview/pages/reseponsivegrid.dart';



void main() {
  runApp(const MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: Text(),
      debugShowCheckedModeBanner: false,
      home: AddApp(),
      //initialRoute: MyRoutes.,
    );
    // home:  MyHomePage());
  }
}

class AddApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AddAppUI();
  }
}

class AddAppUI extends State<AddApp>{

  TextEditingController firstNumber = TextEditingController();
  TextEditingController secondNumber = TextEditingController();
  double ans=0.0;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Numbers"),
      ),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to my calculator",style: TextStyle(fontSize: 30,),),
            SizedBox(height: 15,),
            TextFormField(
              controller: firstNumber,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
                  filled: true,
                  labelText: 'Enter the first number'
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: secondNumber,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
                  filled: true,
                  labelText:'Enter the second number'),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: (){
                    double firstnum = double.tryParse(firstNumber.text)?? 0.0;
                    double secondN = double.tryParse(secondNumber.text)?? 0.0;
                    setState(() {
                      ans = firstnum+secondN;
                    });
                  },
                  child: Text('Add Numbers'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Result: $ans'),

          ],
        ),

      ),

    );
  }

}

