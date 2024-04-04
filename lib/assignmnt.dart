import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: splashscreen(),));
}
class splashscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        height: double.infinity,
        width:double.infinity ,
        child: Lottie.asset("assets/images/Animation - 1710825885563.json"),
      ),
    );
  }

}