import 'package:flutter/material.dart';

InputDecoration InputDesign(label){
     return InputDecoration(
       contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
       border: OutlineInputBorder(),
       labelText: label,


     );
}