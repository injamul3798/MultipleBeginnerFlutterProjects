import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview/todoApp/style/buttonStyle.dart';
import 'package:listview/todoApp/style/sizeBoxforcard.dart';

import 'style/textStyle.dart';


class TodoApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
       return TodoAppUI();
  }
}
class TodoAppUI extends State<TodoApp>{

  List todoList = [];
  String itemList="";

  myInputChanged(content){
      itemList=content;
  }
  addItem(){
    setState(() {
      todoList.add({"item":itemList});

    });
  }
  
  removeItem(index){
    setState(() {
      todoList.removeAt(index);
    });
  }
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  // Function to show a confirmation dialog
  MyDeleteConfirmationDialog(context, index) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Delete Item"),
          content: Text("Do you want to delete this item?"),
          actions: [
            TextButton(
              onPressed: () {
                // Close the dialog
                Navigator.of(context).pop();

                // Delete the item and show a Snackbar
                removeItem(index);
                MySnackBar("Item deleted successfully", context);
              },
              child: Text("Yes"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("No"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Todo App"),),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                   Expanded(flex:70,child: TextFormField(onChanged:(content){
                     myInputChanged(content);
                   },decoration: InputDesign("Enter text"),)),
                   SizedBox(width: 4,),
                   Expanded(flex:30,child: ElevatedButton(onPressed: () {
                      addItem();
                   }, child: Text("Add"),style: buttonDesign(),)),
                  ],
                )
            ),
            Expanded(
              flex: 90,
                child: ListView.builder(
                    itemCount: todoList.length,
                    itemBuilder: (context,index){
                       return Card(
                           child: sizedBox50(
                               Row(
                                 children: [
                                   Expanded(flex:90,child: Text((todoList[index]['item'])),),
                                  // Expanded(flex:10,child: ElevatedButton(onPressed: () {  }, child:Icon(Icons.delete))),
                                  // Expanded(flex:10,child: IconButton( onPressed: () {  }, icon: Icon(Icons.delete),color: Colors.green,)),
                                   Expanded(flex:10,child: TextButton(onPressed: () {
                                     MyDeleteConfirmationDialog(context, index);
                                     //removeItem(index);
                                   }, child: Icon(Icons.delete),),
                                   )
                                 ],


                               )
                           ),
                       );
                    }

                )
            ),
          ],
        ),
      ),
    );
  }
}