import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:ProfileBook() ,));
}
class ProfileBook extends StatefulWidget {
  @override
  State<ProfileBook> createState() => _ProfileBookState();
}

class _ProfileBookState extends State<ProfileBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("profile"),
    );
  }
}