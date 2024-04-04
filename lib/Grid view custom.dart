import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home:Gridviewcustom(),));
}
class Gridviewcustom extends StatelessWidget {
  List<IconData> icons = [
    FontAwesomeIcons.facebook,
    FontAwesomeIcons.whatsapp,
    FontAwesomeIcons.facebook,
    CupertinoIcons.settings_solid,
    FontAwesomeIcons.youtube,
    FontAwesomeIcons.bicycle
  ];
  var name=[
    'Car',
    'Bus',
    'bicycle',
    'Train',
    'bike',
    'airoplane'


  ];
  var color = [
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.greenAccent,
    Colors.deepPurpleAccent,
    Colors.pink
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              color: color[index],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icons[index]),
                  Text(name[index]),
                ],
              ),
            );
          },childCount: color.length)),
    );
  }
}
