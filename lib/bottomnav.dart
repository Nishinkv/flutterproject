import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/slivers%20eg.dart';

import 'hotel home menu.dart';
import 'list seperate.dart';
void main (){
  runApp(MaterialApp(home: bottomnav(),));
}
class bottomnav extends StatefulWidget{
  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  var screen=[
    listseparate(),
    Text("Home"),
    Text("Favourite"),
    Text("Account"),
    Text("Notification"),
  ];
  int index=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("bottom navigation"),),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        unselectedItemColor: Colors.orange,
        selectedItemColor: Colors.blue,
        currentIndex: index,
          onTap: (tabindex){
          setState(() {
            index=tabindex;
          });
          },
        type: BottomNavigationBarType.fixed,

          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favourite"),
        BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Account"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notifications"),
      ],),
      body: Center(child: screen[index],),
    );

  }
}