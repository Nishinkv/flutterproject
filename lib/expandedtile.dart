import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: expandedtile(),));
}
class expandedtile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(
              title:Text("Colors"),
          subtitle: Text("type of colors"),
          children: [
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                title: Text("Red"),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
              ),
              title: Text("Yellow"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
              ),
              title: Text("Green"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              title: Text("Blue"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
              ),
              title: Text("DeepPurpleaccent"),
            ),
          ],)

        ],
      ),

    );
  }

}