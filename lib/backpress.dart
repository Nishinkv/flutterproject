import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: backpress(),));
}
class backpress extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future<bool>showDialogpop() async{
      return await showDialog(context: context, builder: (context) {
        return AlertDialog(
          title: Text("do you wanna exit"),
          actions: [
            TextButton(onPressed: () {
              Navigator.of(context).pop(false);

            },
                child: Text("yes")),
            TextButton(onPressed: () {
              Navigator.of(context).pop(false);

            },
                child: Text("No")),
          ],
        );

      },);
    }
    return WillPopScope(
        onWillPop:showDialogpop,
    child: Scaffold());
  }

}