import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/login%20page.dart';

import 'custom widget.dart';

void main(){
  runApp(MaterialApp(home: custmeg(),));
}
class custmeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: customwidget(txt: Text("heey broo"), onpress: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
        },
        img: Image.asset("assets/images/peace img.jpeg"),
        clr: Colors.green,),


      ),
    );
  }

}