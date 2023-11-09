


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
  var result;
  double ans=0.0;
  var count=0;


  addNumber(double n1,double n2){
    setState(() {
      ans = n1 + n2;
      count++;
    });
  }

  subNumber(double n1,double n2){
    setState(() {
      ans = n1 - n2;
      count++;
    });
  }
  mulNumber(double n1,double n2){
    setState(() {
       result = n1 * n2;
    });
  }

  divNumber(double n1,double n2){
    setState(() {
      if (n2 != 0) {
        result = n1 / n2;
      } else {
        result = "Division by zero is not allowed";
      }
    });
  }



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
                      addNumber(firstnum,secondN);
                    },
                  child: Text('Addition'),
                ),
                SizedBox(width: 10)
                ,
                ElevatedButton(
                  onPressed: (){
                    double firstnum = double.tryParse(firstNumber.text)?? 0.0;
                    double secondN = double.tryParse(secondNumber.text)?? 0.0;
                    subNumber(firstnum,secondN);
                  },
                  child: Text('Substract'),
                ),
                SizedBox(width: 10),

                ElevatedButton(
                  onPressed: (){
                    double firstnum = double.tryParse(firstNumber.text)?? 0.0;
                    double secondN = double.tryParse(secondNumber.text)?? 0.0;
                    mulNumber(firstnum,secondN);
                  },
                  child: Text('Mul'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: (){
                    double firstnum = double.tryParse(firstNumber.text)?? 0.0;
                    double secondN = double.tryParse(secondNumber.text)?? 0.0;
                    divNumber(firstnum,secondN);
                  },
                  child: Text('Div'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(count == 1 ? 'Result: ${ans.toString()}' : 'Result: ${result.toString()}'),
          ],
        ),
        
      ),

    );
  }

}

