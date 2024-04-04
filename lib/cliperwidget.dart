import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: cliperwidget(),));
}
class cliperwidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(

            child: ClipRect(

              child: Container(child: Image(image: NetworkImage("https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvdjU0NmJhdGNoMy1teW50LTM0LWJhZGdld2F0ZXJjb2xvcl8xLmpwZw.jpg"),)),
            ),
          ),

          Container(
          child: ClipRRect(
          borderRadius:BorderRadius.circular(100) ,

          child: Image(image: NetworkImage("https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),),
    ),
          ),
        Container(
          child: ClipOval(
            child: Image(image: NetworkImage("https://images.pexels.com/photos/6389790/pexels-photo-6389790.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),),
          ),
        )
      ],),
    );
  }

}