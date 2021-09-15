import 'package:flutter/material.dart';

class AcidAttack extends StatelessWidget{
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
          title: Text('Acid Attack',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black54,
            ),
          ),
        ),
        body:
            Container (child:
        ListView(children: <Widget>[Expanded(child:
        Container(
            height: 290,
            width: 100,
            alignment: Alignment.topCenter,
            child: Center(
              child: Column(
                  children: <Widget>[
                    Expanded(child:
                    ListTile(
                      title: Text(
                          '          Section 326 A',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          color: Colors.cyan,
                      )),
                subtitle: Text(
                  'The Section 326 A in the Indian Penal Code lays down the punishment for acid attacks. The minimum punishment is 10 years imprisonment. It can extend up to life imprisonment with fine.',
            maxLines: 12,
            overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 15,
                        ),),
                    ),
                    ),


                    Container(
                      child:
                      ListTile(
                          title: Text(
                              '         Section 326 B',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.cyan,
                              )),
                          subtitle: Text(
                            'The Section 326 B in the Indian Penal Code lays down the punishment for attempted acid attacks. The minimum punishment is 5 years imprisonment. It can extend up to 7 years imprisonment with fine.',
                            maxLines: 10,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                            ),
                          )
                      ),
                    )
                  ]
              ),
            )
        ),
        ),]
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