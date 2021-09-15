import 'package:flutter/material.dart';

class Attempt_Rape extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          height: 1000,
          width: 500,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.white],
            ),
          ),
        ),
        title: Text('Attempt to Rape',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black54,
          ),
        ),
      ),
      body:Container(
      child:
      ListView(children: <Widget>[Expanded(child:
      Container(
          height: 310,
          width: 500,
          alignment: Alignment.topCenter,
          child: Center(
            child: Column(
                children: <Widget>[
                  Expanded(child:
                  ListTile(
                    title: Text(
                        '         Section 376',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.cyan,
                        )
                    ),
                    subtitle: Text(
                      'Punishment for sexual assault – 1 (a) whoever, except in the cases provided for by sub-section  (2) commits sexual assault shall be punished with imprisonment of either description for a term which shall not be less than seven years but which may extend to 10 years and shall also be liable to fine.',
                      maxLines: 50,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                      ),),
                  ),
                  ),


                  Container(
                    height: 100,
                    child:
                    ListTile(
                      title: Text(
                          '         Section 511',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.cyan,
                          )),
                      subtitle: Text(
                        'Punishment for attempting to commit offences, punishable with imprisonment for life or other imprisonment.',
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 15,
                        ),),
                    ),

                  )

                ]),),

      ),
      ),
    ],
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
      )
    );
  }
}