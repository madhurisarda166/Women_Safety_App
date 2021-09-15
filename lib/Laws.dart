import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:women_safety_app/Cruelty.dart';
import 'package:women_safety_app/Harassment.dart';
import 'package:women_safety_app/Importation.dart';
import 'package:women_safety_app/Insult.dart';
import 'package:women_safety_app/Kidnapping.dart';
import 'package:women_safety_app/Outraging.dart';
import 'package:women_safety_app/Rape.dart';
import 'package:women_safety_app/Stalking.dart';
import 'package:women_safety_app/Voyeurism.dart';
import 'package:women_safety_app/murder.dart';
import 'Acid_Attack.dart';
import 'Assault.dart';
import 'Attempt_Rape.dart';
import 'main_drawer.dart';

class Laws extends StatelessWidget{
  static const routeName = '/laws-widget';
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
          title: Text('Laws',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),),
        drawer: MainDrawer(),
        body:
        ListView(children: <Widget>[
          Container(
            height: 20,
            width: 100,
          ),
          Container(
            color: Colors.transparent,
            height: 140,
            width: 20,
            child: Image.asset('assets/lawg.png',
              width: 40.0,
              height: 60.0,
            ),
          ),
          Container(
            height: 20,
            width: 100,
          ),
          Container(
            alignment: Alignment.topRight,
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Stalking()
                          ),
                        );},
                      textColor: Colors.black,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.cyan,width: 7),
                          borderRadius: BorderRadius.circular(15),
                      ),
                      icon: Icon(Icons.assignment),
                      padding: EdgeInsets.fromLTRB(10, 15, 164, 15),
                      label: const Text('Stalking (Section 354D) ',maxLines: 2,

                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,),
                    ),
                    Container(
                      height: 5,
                      width: 100,
                    ),
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Voyeurism()
                          ),
                        );},
                      textColor: Colors.black,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.cyan,width: 7),
                        borderRadius: BorderRadius.circular(15),

                      ),
                      icon: Icon(Icons.assignment),
                      padding: EdgeInsets.fromLTRB(10, 15, 153, 15),
                      label: const Text('Voyeurism (Section 354C)',maxLines: 2,

                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,),
                    ),
                    Container(
                      height: 5,
                      width: 100,
                    ),
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Assault()
                          ),
                        );},
                      textColor: Colors.black,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.cyan,width: 7),
                        borderRadius: BorderRadius.circular(15),

                      ),
                      icon: Icon(Icons.assignment),
                      padding: EdgeInsets.fromLTRB(10, 15, 105, 15),
                      label: const Text('Assault on women (Section 354B)',maxLines: 2,

                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,),
                    ),
                    Container(
                      height: 5,
                      width: 100,
                    ),
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Harassment()
                          ),
                        );},
                      textColor: Colors.black,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.cyan,width: 7),
                        borderRadius: BorderRadius.circular(15),

                      ),
                      icon: Icon(Icons.assignment),
                      padding: EdgeInsets.fromLTRB(10, 15, 100, 15),
                      label: const Text('Sexual harassment (Section 354A)',maxLines: 2,

                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,),
                    ),
                    Container(
                      height: 5,
                      width: 100,
                    ),
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Importation()
                          ),
                        );},
                      textColor: Colors.black,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.cyan,width: 7),
                        borderRadius: BorderRadius.circular(15),


                      ),
                      icon: Icon(Icons.assignment),
                      padding: EdgeInsets.fromLTRB(10, 15, 100, 15),
                      label: const Text('Importation of girls (Section 366B)',maxLines: 2,

                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,),
                    ),
                    Container(
                      height: 5,
                      width: 100,
                    ),
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Rape()
                          ),
                        );},
                      textColor: Colors.black,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.cyan,width: 7),
                        borderRadius: BorderRadius.circular(15),

                      ),
                      icon: Icon(Icons.assignment),
                      padding: EdgeInsets.fromLTRB(10, 15, 90, 15),
                      label: const Text('Rape (Sections 375, 376 (A,B,C,D,E))',maxLines: 2,

                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,),
                    ),
                    Container(
                      height: 5,
                      width: 100,
                    ),
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>AcidAttack()
                          ),
                        );},
                      textColor: Colors.black,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.cyan,width: 7),
                        borderRadius: BorderRadius.circular(15),

                      ),
                      icon: Icon(Icons.assignment),
                      padding: EdgeInsets.fromLTRB(10, 15, 78, 15),
                      label: const Text('Acid Attack (Sections 326A and 326B)',maxLines: 2,

                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,),
                    ),
                    Container(
                      height: 5,
                      width: 100,
                    ),
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Attempt_Rape()
                          ),
                        );},
                      textColor: Colors.black,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.cyan,width: 7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      icon: Icon(Icons.assignment),
                      padding: EdgeInsets.fromLTRB(10, 15, 51, 15),
                      label: const Text('Attempt to commit rape (Section 376/511)',maxLines: 2,

                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,),
                    ),
                    Container(
                      height: 5,
                      width: 100,
                    ),
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Insult()
                          ),
                        );},
                      textColor: Colors.black,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.cyan,width: 7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      icon: Icon(Icons.assignment),
                      padding: EdgeInsets.fromLTRB(10, 15, 35, 15),
                      label: const Text('Insult the modesty of a woman (Section 509)',maxLines: 2,

                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,),
                    ),
                    Container(
                      height: 5,
                      width: 100,
                    ),
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Kidnapping()
                          ),
                        );},
                      textColor: Colors.black,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.cyan,width: 7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      icon: Icon(Icons.assignment),
                      padding: EdgeInsets.fromLTRB(10, 15, 25, 15),
                      label: const Text('Kidnapping and abduction (Sections 363–373)',maxLines: 2,

                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,),
                    ),
                    Container(
                      height: 5,
                      width: 100,
                    ),
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Outraging()
                          ),
                        );},
                      textColor: Colors.black,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.cyan,width: 7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      icon: Icon(Icons.assignment),
                      padding: EdgeInsets.fromLTRB(10, 15, 21, 15),
                      label: const Text('Outraging the modesty of women (Section 354)',maxLines: 2,

                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,),
                    ),
                    Container(
                      height: 5,
                      width: 100,
                    ),
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Cruelty()
                          ),
                        );},
                      textColor: Colors.black,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.cyan,width: 7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      icon: Icon(Icons.assignment),
                      padding: EdgeInsets.fromLTRB(10, 15, 7, 15),
                      label: const Text('Cruelty by husband or his relatives(Section 498A)',maxLines: 2,

                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,),
                    ),
                    Container(
                      height: 5,
                      width: 100,
                    ),
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Murder()
                          ),
                        );},
                      textColor: Colors.black,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.cyan,width: 7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      icon: Icon(Icons.assignment),
                      padding: EdgeInsets.fromLTRB(10, 15, 5, 15),
                      label: const Text('Murder, DowryDeath(Sections 302, 304B and 306)',maxLines: 2,

                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,),
                    ),
                    Container(
                      height: 15,
                      width: 100,
                    ),
                  ]),
            ),
          ),
        ],));
  }
}