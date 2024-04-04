import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: Bottomsheet(),));
}
class Bottomsheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("bottom sheet"),),
      body: Center(child: GestureDetector(
        onTap: ()=>
          show(context),
        child: Text("Press here"),
      ),),
    );
  }

  void show(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){

      return Container(
        child: Column(
          mainAxisSize:MainAxisSize.min,
            children: [
          ListTile(
            title: Text("whatsapp"),
            leading: FaIcon(
                FontAwesomeIcons.whatsapp,
            color: Colors.green,),
          ),
          ListTile(
            title: Text("facebook"),
            leading: FaIcon(
                FontAwesomeIcons.facebook,
            color: Colors.blue,),

          ),
          ListTile(
          title: Text("instagram"),
      leading: FaIcon(
          FontAwesomeIcons.instagram,
        color: Colors.pink,
      ),
          ),
        ],),
      );
    });
  }

}