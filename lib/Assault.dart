import 'package:flutter/material.dart';

class Assault extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.white],
            ),
          ),
        ),
        title: Text('Assault on Women',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black54,
          ),
        ),
      ),
      body:Container(
        alignment: Alignment.topCenter,
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(child:
              ListTile(
                title: Text(
                    '         Section 354 B',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.cyan,
                    ) ),
                subtitle:
                Text(
                  'Any man who assaults or uses criminal force to any woman or abets such act with the intention of disrobing1 or compelling her to be naked, shall be punished with imprisonment of either description for a term which shall not be less than three years but which may extend to seven years, and shall also be liable to fine.',
                  maxLines: 60,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                  ),),
              ),
              ),
            ],
          ),
        ),
        margin: new EdgeInsets.symmetric(horizontal: 8,vertical: 8),

        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.cyan,
            width: 5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
    );
  }
}