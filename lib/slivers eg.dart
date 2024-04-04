import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: sliverseg(),
  ));
}

class sliverseg extends StatelessWidget {
  var clr=[100,200,300,400,500,600];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Colors.green,
          floating: true,
          pinned: true,
          snap: false,
          title: Text("Custom AppBar"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          ],

          elevation: 0,
          bottom: AppBar(
            title: Container(
              height: 20,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green[20],
              ),
              child: TextField(
                decoration:
                    InputDecoration(hintText: "search",
                        prefixIcon:Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt)),
              ),
            ),
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context,index){
          return Card(color: Colors.green[clr[index]],
          child: Container(height: 100,),);
        }))
      ]),
    );
  }

}

