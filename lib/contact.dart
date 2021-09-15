import 'package:flutter/material.dart';
import 'package:share/share.dart';

class SMS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF0277BD), Color(0xFF81D4FA)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.white],
            ),
          ),
        ),
        title: Text("Send SMS to Family",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black54
        ),),
      ),
            body: Center(
                         child: RaisedButton(
                               child: Text("Send SMS"),
                                 textColor: Colors.black54,
                                 padding: const EdgeInsets.all(20),
                                   color: Colors.cyan,
                                   onPressed: () {
                                 Share.share("Help Me I Am In Trouble!!");
                                },
                               )),
                           );
  }
}