import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: drawereg(),));
}

class drawereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("drawereg"),),
      drawer: Drawer(backgroundColor: Colors.yellow,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("nishin"),
              accountEmail: Text("nishinkv1999@gmail.com"),
              currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/download.jpg"),),
              otherAccountsPictures: [
                CircleAvatar(backgroundImage: AssetImage("assets/images/download.jpg"),),
                CircleAvatar(backgroundImage: AssetImage("assets/images/download.jpg"),),

              ],
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/download.jpg"),fit: BoxFit.fill),

              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("All email"),
            ),
            ListTile(
              leading: Icon(Icons.drafts),
              title: Text("Draft"),

            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Send"),
            ),
            ListTile(
              leading: Icon(Icons.outbox),
              title: Text("Outbbox"),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
            ),
          ],
        ),
      ),
      body: Center(child: Text("welcome"),),
    );
  }

}