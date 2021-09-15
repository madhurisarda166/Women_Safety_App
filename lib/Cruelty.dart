import 'package:flutter/material.dart';

class Cruelty extends StatelessWidget{
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
          title: Text('Cruelty',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black54,
            ),
          ),
        ),
        body:
        Container(

            alignment: Alignment.topCenter,
            child: Center(
              child: Column(
                children: <Widget>[
                  Expanded(child:
                  ListTile(
                    title: Text(
                        '         Section 498 A',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.cyan,
                        )),
                    subtitle: Text(
                      'For the purpose of this section, “cruelty” means—(a) any wilful conduct which is of such a nature as is likely to drive the woman to commit suicide or to cause grave injury or danger to life, limb or health (whether mental or physical) of the woman.                                                      (b) harassment of the woman where such harassment is with a view to coercing her or any person related to her to meet any unlawful demand for any property or valuable security or is on account of failure by her or any person related to her to meet such demand.',
                      maxLines: 70,
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