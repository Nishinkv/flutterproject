import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: signup(),
  ));
}

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text("Register Page", style: TextStyle(fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "User Name",
                    hintText: "user name",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "E-mail",
                    hintText: "e-mail",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "password",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "confirm password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signup()));
                },
                child: Text("Sign Up"),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
