import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: staggeredeg(),
  ));
}

class staggeredeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                      child: Container(height: 200,
                        child: Image(
                          image: AssetImage("assets/images/havasu.jpg"),fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text("Havasu falls",style: TextStyle(fontWeight: FontWeight.w700),),
                    )
                  ],
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                      child: Container(height: 440,
                      child: Image(image: AssetImage("assets/images/151792.jpg"),fit: BoxFit.fill,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text("Trondheim",style: TextStyle(fontWeight: FontWeight.w700),),
                    )
                  ],
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                      child: Container(height: 440,
                        child: Image(
                            image: AssetImage(
                                "assets/images/wp2242916-portugal-wallpapers.jpg"),fit: BoxFit.fill,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text("Portugal",style: TextStyle(fontWeight: FontWeight.w700)),
                    )
                  ],
                ),
              ),
            ),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                        child: Container(height: 200,
                          child: Image(
                              image: AssetImage(
                                  "assets/images/wp2521458-rocky-mountain-national-park-hd-wallpapers.jpg"),fit: BoxFit.fill,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text("Rocky mountain",style: TextStyle(fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
