import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
runApp(MaterialApp(home:Homepage(),));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            color: Colors.red,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/instagram 2.jpeg"),
              ),
              title: Text("seyl"),
              subtitle: Text("1234567"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.yellow,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/instagram 2.jpeg"),
              ),
              title: Text("ram"),
              subtitle: Text("1234567"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.green,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/instagram 2.jpeg"),
              ),
              title: Text("nosh"),
              subtitle: Text("1234567"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.cyan,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/instagram 2.jpeg"),
              ),
              title: Text("nanu"),
              subtitle: Text("1234567"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.cyan,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/instagram 2.jpeg"),
              ),
              title: Text("nanu"),
              subtitle: Text("1234567"),
              trailing: Icon(Icons.call),
            ),
          ),
        ],
      ),
    );
  }
}
