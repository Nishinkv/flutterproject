import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Staggerd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: const [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Card(
              child: Column(
                children: [
                  Text("home"),
                Icon(Icons.home),
                ],
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Card(
              child: Column(
                  children: [
                  Text("home"),
              Icon(Icons.home),
              ],
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Card(
              child: Column(
                  children: [
                  Text("home"),
              Icon(Icons.home),
              ],
          ),
          ),
      ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Card(
              child: Column(
                  children: [
                  Text("home"),
              Icon(Icons.home),
              ],
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: Card(
              child: Column(
                  children: [
                  Text("home"),
              Icon(Icons.home),
              ],
              ),
            ),
          ),
        ],
      ),


      );
    
  }

}