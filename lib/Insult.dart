import 'package:flutter/material.dart';

class Insult extends StatelessWidget{
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
        title: Text('Insult the Modesty of Women',
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
                    '         Section 509',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.cyan,
                    )
                ),
                subtitle:
                Text(
                  'Word, gesture or act intended to insult the modesty of a woman.—Whoever, intending to insult the modesty of any woman, utters any word, makes any sound or gesture, or exhibits any object, intending that such word or sound shall be heard, or that such gesture or object shall be seen, by such woman, or intrudes upon the privacy of such woman, shall be punished with simple imprisonment for a term which may extend to one year, or with fine, or with both.',
                  maxLines: 100,
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