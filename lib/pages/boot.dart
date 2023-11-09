import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class BootStrap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Bootstrap"),),
      body: SingleChildScrollView(
        child: BootstrapContainer(
          fluid: true,
          children: [
            BootstrapRow(
                children:<BootstrapCol>[
                  BootstrapCol(
                      sizes: 'col-xl-1 col-l-2 col-md-3 col-sm-4 col-xs-5',
                      child: Column(
                        children: [
                          Container(
                              color: Colors.green,
                          ),
                          Container(
                            color: Colors.red,
                          ),
                          Container(
                            color: Colors.blue,
                          ),
                        ],
                      )



                  )
                ]
            )
          ],

        ),
      ),
    );
  }

}
