import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: login(),));
}
class login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image(image: AssetImage("assets/images/instagram.png"),height: 100,width: 100,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 70,right: 70),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                 hintText: "username",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(50)
                 )
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 70,right: 70,bottom: 50),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "password",
                  prefixIcon:Icon(Icons.password) ,
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                )
              ),

            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)), onPressed:(){
  },child:Text("Login")),
    TextButton(onPressed:() {
        }, child: Text("Not a user,create new Account"))

          ]
        ),
      ),

    );
  }

}