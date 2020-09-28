
import 'dart:math';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false,home:New(),),);

class New extends StatefulWidget {
  
  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
   int leftdn = 3;
  int rightdn = 5;
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("Rolling the dice"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Row(
            children: <Widget>[
              Expanded(
        child: FlatButton(
          onPressed: (){
            setState(() {
               rightdn= Random().nextInt(6)+1;
              leftdn = Random().nextInt(6)+1;
            });
          },
          child: Image.asset("images/dice$leftdn.png"),
          ),
        ),

        Expanded(
        child: FlatButton(
          onPressed: (){
            setState(() {
                   leftdn = Random().nextInt(6)+1;
              rightdn= Random().nextInt(6)+1;

            });
          },
          child: Image.asset("images/dice$rightdn.png"),
          ),
        ),
            ],

          ),
      ),
    );
  }
}

