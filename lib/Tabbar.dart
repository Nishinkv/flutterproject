import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/staggered%20eg.dart';
void main (){
  runApp(MaterialApp(home: Tabbar(),));
}
class Tabbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar
          (title: Text("Tabbar Example"),
        actions: [
          Icon(Icons.add),
        ],
        bottom: TabBar(tabs: [
          Tab(child: Icon(Icons.camera_alt,size: 30,)),
          Tab(
            child: Text("Chat",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            )),
          Tab
            (child: Text("Contact",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
          ),),
          Tab(child: Text("Status",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
          )),
        ],),),
        body: TabBarView(children: [
          Center(child: Text("Camera")),
          staggeredeg(),
          Center(child: Text("Chat")),
          Center(child: Text("Status")),
        ],),

      ),
    );
  }

}