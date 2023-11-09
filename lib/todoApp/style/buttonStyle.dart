import 'package:flutter/material.dart';

ButtonStyle buttonDesign(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(22),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    )
  );
}