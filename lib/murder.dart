import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Murder extends StatelessWidget{
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
          title: Text('Murder, Dowry Death',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black54,
            ),
          ),
        ),
        body:
            Container(child:
        ListView(children: <Widget>[Expanded(child:
        Container(
          height: 130,
          width: 100,
          alignment: Alignment.topCenter,
          child: Center(
              child: Column(
                children: <Widget>[
                  Expanded(child:
                  ListTile(
                    title: Text(
                        '          Section 302',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.cyan,
                        )
                    ),
                    subtitle:
                    Text('Punishment for murder.—Whoever commits murder shall be punished with death, or 1[imprisonment for life], and shall also be liable to fine.',
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                      ),),
                  ),
                  ),
                ],)),
        ),),

          Container(
            height: 0,
            width: 0,
          ),
          Container(
            child: ListTile(
              title: Text(
                  '         Section 304 B',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.cyan,
                  )),

              subtitle: Text('Dowry death:-(1) Where the death of a woman is caused by any burns or bodily injury or occurs otherwise than under normal circumstances within seven years of her marriage and it is shown that soon before her death she was subjected to cruelty or har­assment by her husband or any relative of her husband for, or in connection with, any demand for dowry, such death shall be called dowry death, and such husband or relative shall be deemed to have caused her death.'
                  '           (2) Whoever commits dowry death shall be punished with imprison­ment for a term which shall not be less than seven years but which may extend to imprisonment for life.',
                maxLines: 60,
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
            width:  25,
          ),

          Container(
            child:
            ListTile(
              title: Text(
                  '           Section 306',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.cyan,
                  )
              ),
              subtitle: Text(
                ' Abetment of suicide.—If any person commits suicide, whoever abets the commission of such suicide, shall be punished with imprisonment of either description for a term which may extend to ten years, and shall also be liable to fine.',
                maxLines: 40,
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