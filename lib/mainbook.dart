import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/profilbook.dart';

import 'cartbook.dart';
import 'homebook.dart';


class mainbook extends StatefulWidget {
  @override
  State<mainbook> createState() => _mainbookState();
}

class _mainbookState extends State<mainbook> {
  int index = 0;

  var screen = [homebook(), CartBook(), ProfileBook()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.yellow,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        onTap: (tabindex) {
          setState(() {
            index = tabindex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: Center(child: screen[index]),
    );
  }
}