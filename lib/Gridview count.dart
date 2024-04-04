import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridviewcount extends StatelessWidget{
  List<IconData>icons=[

  ]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 3,
        children: List.generate(10, (index){
          return
              Card(color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icons[index]),
                  Text(name[index]),
                ],
              ),);
        })


      ),
    );
  }

}