import 'package:flutter/material.dart';
import 'package:listview/counterApp/main.dart';
import 'package:listview/pages/reseponsivegrid.dart';
import 'package:listview/utils/routes.dart';

import 'addNumbers/main.dart';
import 'pages/boot.dart';
import 'pages/home.dart';
import 'todoApp/todoPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.green
        ),
        darkTheme: ThemeData(
            primarySwatch: Colors.green
        ),
        debugShowCheckedModeBanner: false,
        //initialRoute: MyRoutes.,
        routes: {
          //"/":(context)=>MyHomePage(),
          // "/":(context)=>MyPage(),
          //"/":(context)=>ResponsiveGrdid(),
         // "/":(context)=>MyApp2(),
          "/":(context)=>TodoApp(),

        //  MyRoutes.:(context)=>HomePage(),
          //MyRoutes.loginRoute:(context)=>LogIn(),
         }
         );
       // home:  MyHomePage());

  }
}

class MyHomePage extends StatelessWidget {
  //const MyHomePage({super.key});
  MySnackBar(massege,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(massege))
    );
  }
  MyalertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text("!alert"),
                content: Text("Do you want to save it?"),
                actions: [
                  TextButton(
                      onPressed: (){
                        MySnackBar("Save successfully", context);

                      },
                      child: Text("Yes")
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Text("No")
                  )
                ],
              )
          );
        }
    );
  }


  var MyItems = [
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"Injamull"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"Najmus"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"Shakil"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"saiful"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"Riyad"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"Injam"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"saif"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"tahm"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"shakil"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"Injamull"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"Najmus"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"Shakil"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"saiful"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"Riyad"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"Injam"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"saif"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"tahm"},
    {"img":"https://st2.depositphotos.com/2001755/5408/i/950/depositphotos_54081723-stock-photo-beautiful-nature-landscape.jpg","title":"shakil"},
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("This is appbar section"),
        toolbarHeight: 60,//normmally 60/70 thake
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed:(){MySnackBar("This is search Button", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("This is commnet button", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("Setting", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("Email", context);}, icon: Icon(Icons.email)),
        ],

      ),
      //the differnce between grid and list is grid requirs extra
      //one element called gridDelegate and others are smae
      body:GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing:1,
          ),
          itemCount: MyItems.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                MySnackBar(MyItems[index]['title'], context);
              },
              child: Container(
                margin: EdgeInsets.all(5),
                width: double.infinity,//take full container width
                height: 200,
                child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill,),
              ),
            );
          },
      ),
      drawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: UserAccountsDrawerHeader(

                accountName: Text("John de",style: TextStyle(color:Colors.black),),
                accountEmail: Text("injamul@gmail.com",style: TextStyle(color:Colors.black),),
                currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlLgqt5xbTd0m9gmZSyUx0ikewGyZUg1KhaA&usqp=CAU"),

              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: (){
                MySnackBar("Home", context);
              },
            ),
            ListTile(
              title: Text("Contact"),
              leading: Icon(Icons.contact_phone),
              onTap: (){
                MySnackBar("Contact", context);
              },

            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              onTap: (){
                MySnackBar("profile", context);
              },
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: (){
                MySnackBar("Home", context);
              },
            )
          ],
        ),

      ),

      //floatingActionButton:() ,
      //   body: ,
    );

  }
}
