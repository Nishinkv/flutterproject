import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: naviexample1(),
    debugShowCheckedModeBanner: false,
  ));
}

class naviexample1 extends StatefulWidget {
  @override
  State<naviexample1> createState() => _naviexample1State();
}

class _naviexample1State extends State<naviexample1> {
  // var index=1;
  // var scrn = [naviexample1(), Text("Cart"), Text("Account")];
  var image=[
    "assets/images/fruit1.jpg",
    "assets/images/veg1.jpg",
    "assets/images/fruit2.jpg",
    "assets/images/veg2.jpg",
    "assets/images/fruit3.jpg",
    "assets/images/veg3.jpg"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "FARMER FRESH ZONE",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Center(
                child: Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Kochi",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
        bottom: AppBar(
          backgroundColor: Colors.green,
          title: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search for vegetables and fruits",
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  )),
            ),
          ),
        ),
      ),
      body:
      CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate([Container(
            width: double.infinity,
            height: 50,
            child: Wrap(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(left: 70, right: 50, top: 15),
                  child: Container(
                    height: 20,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        "VEGETABLES",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    height: 20,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        "FRUITS",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(right: 50, left: 50, top: 15),
                  child: Container(
                    height: 20,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        "EXOTIC CUTS",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
            Container(
              width: double.infinity,
              height: 160,
              child: CarouselSlider(
                options: CarouselOptions(
                    height: double.infinity,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.5,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 5),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.7,
                    scrollDirection: Axis.horizontal),
                items: [
                  Image(image: AssetImage("assets/images/vgies/frt1.jpg")),
                  Image(image: AssetImage("assets/images/vgies/frt2.jpg")),
                  Image(image: AssetImage("assets/images/vgies/frt3.jpg")),
                  Image(image: AssetImage("assets/images/vgies/frt4.jpg")),
                  Image(image: AssetImage("assets/images/vgies/frt5.jpg"))
                ],
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),height: 50,width: 450,
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40,top: 10),
                        child: Column(
                          children: [
                          Icon(CupertinoIcons.time_solid),
                          Text("30 mins policy")
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40,top: 10),
                        child: Column(
                          children: [
                            Icon(CupertinoIcons.profile_circled),
                            Text("Traceability")
                          ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40,top: 10),
                        child: Column(
                          children: [
                            Icon(CupertinoIcons.home),
                            Text("Local Sourrounding")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text(
                "Shop By Category",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 20),
              ),
            ),
          ]),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index){
            return Card(
              child: Container(
                height: 90,
                width: 80,
                decoration: BoxDecoration(
                  boxShadow:[ BoxShadow(color: Colors.black,blurRadius: 10)],
                  borderRadius: BorderRadius.circular(5),image: DecorationImage(image: AssetImage(image[index]),fit: BoxFit.cover)
                ),
              ),
            );
          },childCount: image.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 10,
                  mainAxisSpacing: 20))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}