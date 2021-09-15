import 'package:flutter/material.dart';

class Stalking extends StatelessWidget{
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
        title: Text('Stalking',
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
                  Container(

                     child: ListTile(


                    title: Text(
                    '         Section 354 D',
                    style: TextStyle(
                    fontSize: 25,
                     fontWeight: FontWeight.bold,
                   fontStyle: FontStyle.italic,
                    color: Colors.cyan,
                   )
                     ),
                         subtitle:
                       Text(
                         'Whoever commits the offence of stalking shall be punished on first conviction with imprisonment of either description for a term which may extend to three years, and shall also be liable to fine; and be punished on a second or subsequent conviction, with imprisonment of either description for a term which may extend to five years, and shall also be liable to fine.',
                         maxLines: 50,
                         overflow: TextOverflow.ellipsis,

                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontStyle: FontStyle.italic,
                           fontSize: 15,

                         ),

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


              ),
            ],
          ),
        ),
      ),
    );
  }
}