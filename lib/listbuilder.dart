import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/homepage).dart';
void main(){
  runApp(MaterialApp(home: Listbuilder(),));
}
class Listbuilder extends StatefulWidget{
  @override
  State<Listbuilder> createState() => _ListbuilderState();
}

class _ListbuilderState extends State<Listbuilder> {
  var name = ["sanjay", "sinsar", "bindya", "seyl", "nishin"];
  var phone = ["9633671030", "9446425219", "9447627219", "1799946372", "12345678890"];
  var images = ["assets/images/instagram.png", "assets/images/instagram.png", "assets/images/instagram.png", "assets/images/instagram.png", "assets/images/instagram.png"];
  var color = [Colors.yellow, Colors.cyan, Colors.red, Colors.green, Colors.pink];
  var clr=[800,700,600,500,400];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Card(
          shadowColor: Colors.green,
          surfaceTintColor: Colors.red,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: Colors.yellow[clr[index]],
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(images[index]),),
            title: Text("${name[index]}"),
            subtitle: Text("${phone[index]}"),
            trailing: Icon(Icons.call),
          ),

        );
      }, itemCount: name.length,),
    );
  }
}