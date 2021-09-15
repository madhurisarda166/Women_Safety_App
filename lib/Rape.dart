import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rape extends StatelessWidget{
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
          title: Text('Rape',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black54,
            ),
          ),
        ),
        body:
            Container(child:
        ListView( children: <Widget>[Expanded(
          child: Container(
              height: 180,
              width: 100,
              alignment: Alignment.topCenter,
              child: Center(
                child: Column(
                    children: <Widget>[
                      Expanded(child:
                      ListTile(
                        title: Text(
                          '         Section 375',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.cyan,
                          ),
                        ),

                        subtitle: Text(
                          'The Section 375 of the Indian Penal Code defines rape as "sexual intercourse with a woman against her will, without her consent, by coercion, misrepresentation or fraud or at a time when she has been intoxicated or duped, or is of unsound mental health and in any case if she is under 18 years of age."',
                          maxLines: 80,
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
            height: 40,
            width: 40,
          ),
          Container(
            child:
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
                'Punishment for sexual assault – 1 (a) whoever, except in the cases provided for by sub-section (2) commits sexual assault shall be punished with imprisonment of either description for a term which shall not be less than seven years but which may extend to 10 years and shall also be liable to fine.',
                maxLines: 80,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                ),),
            ),

          ),

          Container(
            height: 20,
            width: 20,
          ),
          Container(
            child:
            ListTile(
              title: Text(
                  '       Section 376 A',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.cyan,
                  )),
              subtitle: Text(
                'Intercourse by a man with his wife during separation shall be punished with imprisonment of either description for a term which may extend to two years and shall also be liable to fine.',
                maxLines: 80,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                ),),
            ),
          ),
          Container(
            height: 25,
            width: 25,
          ),
          Container(
            child:
            ListTile(
              title: Text(
                  '       Section 376 B',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.cyan,
                  )),
              subtitle:
              Text(
                ' Intercourse by public servant with woman in his custody the offence of rape, shall be punished with imprisonment of either description for a term which may extend to five years and shall also be liable to fine.',
                maxLines: 80,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                ),),
            )
            ,
          ),
          Container(
            height: 20,
            width: 20,
          ),
          Container(
            child:
            ListTile(
              title: Text(
                '       Section 376 C',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.cyan,

                ),
              ),

              subtitle:
              Text(
                'Whoever, being the superintendent or manager of a jail,takes advantage of his official position and seduces any female,such sexual intercourse not amounting to the offence of rape, shall be punished with imprisonment of either description for a term which may extend to five years and shall also be liable to fine. ',
                maxLines: 80,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                ),),
            )
            ,
          ),
          Container(
            height: 20,
            width: 20,
          ),
          Container(
            child:
            ListTile(
              title: Text(
                  '       Section 376 D',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.cyan,
                  )),
              subtitle: Text('Where a woman is raped by one or more persons constituting a group each of those persons1 shall be deemed to have committed the offence of rape and shall be punished with rigorous imprisonment for a term which shall not be less than twenty years, but which may extend to life imprisonment.',
                maxLines: 80,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                ),),
            ),
          ),
          Container(
            height: 20,
            width: 20,
          ),
          Container(
            child:
            ListTile(
              title: Text(
                  '       Section 376 E',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.cyan,
                  )
              ),
              subtitle:  Text(
                'Whoever has been previously convicted of an offence punishable under section 376 or section 376A or section1 376AB or section 376D or section 376DA or section 376DB and is subsequently convicted of an offence punishable under any of the said sections shall be punished with imprisonment for life imprisonment.',
                maxLines: 80,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                ),),
            ),

          )
        ]
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