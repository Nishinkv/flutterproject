import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:HomePage (),));
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('intro Screen Onboarding'),
        ),
      ),
    );
  }
}