import 'package:flutter/material.dart';

class Kidnapping extends StatelessWidget{
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
          title: Text('Kidnapping & Abduction',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black54,
            ),
          ),
        ),
        body:
            Container(child:
        ListView( children: <Widget>[Expanded(
          child:  Container(
              height: 190,
              width: 100,
              alignment: Alignment.topCenter,
              child: Center(
                child: Column(
                    children: <Widget>[
                      Expanded(child:
                      ListTile(
                        title: Text(
                          '           Section 363',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.cyan,
                          ),

                        ),
                        subtitle: Text('Punishment for kidnapping.—Whoever kidnaps any person from 1[India] or from lawful guardianship, shall be punished with imprisonment of either description for a term which may extend to seven years, and shall also be liable to fine.',
                          maxLines: 50,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                          ),),
                      ),
                      ),
                    ]),)),),

          Container(
            child:
            ListTile(
              title: Text(
                '           Section 373',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.cyan,
                ),
              ),
              subtitle: Text(
                'Buying minor for purposes of prostitution, etc.—Whoever buys, hires or otherwise obtains possession of any 1 employed or used for any purpose, shall be pun­ished with imprisonment of either description for a term which may extend to ten years, and shall also be liable to fine. ',
                maxLines: 50,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                ),),
            ),
          ),

        ]),

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