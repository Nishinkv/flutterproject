import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/stack.dart';

void main() {
  runApp(MaterialApp(
    home: hotelhome(),
  ));
}

class hotelhome extends StatelessWidget {
  var image = [
    "assets/images/awesome room.jpeg",
    "assets/images/beautiful room.jpeg",
    "assets/images/peaceful room.jpeg",
    "assets/images/vintage room.jpeg",
    "assets/images/vintage rum 2.jpeg",
    "assets/images/unique room.jpeg",
    "assets/images/peace room 2.jpeg",
    "assets/images/vintage rum 2.jpeg",
    "assets/images/beauty rum 2.jpeg"
  ];
  var prize = ["50", "40", "20", "70", "80", "40", "30", "20", "90"];
  var name = [
    "Awesome Room",
    "Peaceful Room",
    "Beautiful Room",
    "vintage Room",
    "Unique Room",
    "Peaceful Room",
    "Beautiful Room",
    "Vintage Room",
    "Five star Room"
  ];

  @override
  Widget build(BuildContext context) {
    var img;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue[100],
            floating: true,
            pinned: true,
            title: Icon(Icons.menu),
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 20, left: 150),
              child: Text(
                "type your location",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            ],
            bottom: AppBar(
              backgroundColor: Colors.blue,
              title: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "kakkanad kochi",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              color: Colors.white,
              height: 120,
              child: Stack(
                children: [
                  Positioned(
                    height: 80,
                    width: 80,
                    child: Container(
                      child: Card(
                        color: Colors.pink,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(child: Icon(Icons.hotel)),
                            ),
                            Center(child: Text("Hotel"))
                          ],
                        ),
                      ),
                    ),
                    top: 20,
                    left: 50,
                  ),
                  Positioned(
                    height: 80,
                    width: 80,
                    child: Card(
                      color: Colors.blue,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child:
                                Center(child: Icon(Icons.restaurant_outlined)),
                          ),
                          Center(child: Text("Restaurant"))
                        ],
                      ),
                    ),
                    top: 20,
                    left: 200,
                  ),
                  Positioned(
                    height: 80,
                    width: 80,
                    child: Card(
                      color: Colors.yellow,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Center(child: Icon(Icons.local_cafe)),
                          ),
                          Center(child: Text("Cafe"))
                        ],
                      ),
                    ),
                    top: 20,
                    right: 50,
                  ),
                ],
              ),
            )
          ])),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              color: Colors.white,
              height: 300,
              child: Card(
                  child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(image[index]), fit: BoxFit.fill)),
                  ),
                ),
                Positioned(
                  top: 150,
                  right: 20,
                  child: Container(
                      height: 35,
                      width: 35,
                      color: Colors.white,
                      child: Center(child: Text('\$${prize[index]}'))),
                ),
                Positioned(
                    top: 210,
                    left: 10,
                    child: Text(
                      name[index],
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    )),
                Positioned(top: 237, left: 10, child: Text("Kakkanad,Kochi")),
                Positioned(
                    top: 15,
                    right: 15,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.star, color: Colors.white))),
                Positioned(
                  top: 260,
                  left: 10,
                  child: Container(
                    child: Wrap(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 265,
                    left: 135,
                    child: Text(
                      "(250 reviews)",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ))
              ])),
            );
          }, childCount: image.length))
        ],
      ),
    );
  }
}
