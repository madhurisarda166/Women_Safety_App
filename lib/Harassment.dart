import 'package:flutter/material.dart';

class Harassment extends StatelessWidget{
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
        title: Text('Sexual Harassment',
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
                    '        Section 354 A',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.cyan,
                    )
                ),
                subtitle:
                Text(
                  'Sexual harassment and punishment for sexual harassment. [i][354-A. Sexual harassment and punishment for sexual harassment.—(1) A man committing any of the following acts— (i) physical contact and advances involving unwelcome and explicit sexual overtures; or. (ii) a demand or request for sexual favours.',
                  maxLines: 30,
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