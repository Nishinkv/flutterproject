import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (BuildContext context) =>
      MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        home: Sample(),
      ),));

}

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,),
      body: Container(decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage("assets/images/instagram 2.jpeg"),
          fit: BoxFit.fill)),
        height: double.infinity,
        width: double.infinity,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/images/instagram.png"),
              height: 150,
              width: 100,),
            Text("flutter", style: TextStyle(color: Colors.green,
                fontWeight: FontWeight.w800,
                fontSize: 20),),
          ],
        ),

      ),
    );
  }
}