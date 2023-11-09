import 'package:flutter/cupertino.dart';

SizedBox sizedBox50(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: child,

    ),
  );
}