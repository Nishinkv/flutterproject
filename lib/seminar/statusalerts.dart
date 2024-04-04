
import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: Text('Status Alerts Example'),
),
body: Center(
child: ElevatedButton(
onPressed: () {
final snackBar = SnackBar(
content: Text('Status Alert! This is a success message.'),
backgroundColor: Colors.green,
);
ScaffoldMessenger.of(context).showSnackBar(snackBar);
},
child: Text('Show Status Alert'),
),
),
),
);
}
}