import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main_drawer.dart';

class AddContactWidget extends StatefulWidget {
  static const routeName = 'AddContact-widget';

  @override
  State<StatefulWidget> createState() => _AddContactWidgetState();

  
  
}

class _AddContactWidgetState extends State<AddContactWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.cyan, Colors.white],
              ),
            ),
          ),
          title: new Text("Add Contact",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),),
        ),
        drawer: MainDrawer(),
        
        body:
         ListView(),
        
        );
   
  }
 
}