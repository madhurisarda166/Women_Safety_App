import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:women_safety_app/AddContact.dart';
import 'package:women_safety_app/ContactList.dart';
import 'package:women_safety_app/Laws.dart';
import 'package:women_safety_app/Tips.dart';
import 'package:women_safety_app/home_screen.dart';
import 'package:women_safety_app/rating_screen.dart';
import 'package:women_safety_app/traning.dart';
import 'package:women_safety_app/Tips.dart';
import 'details_screen.dart';
import 'rating_screen.dart';

class MainDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF81D4FA), Color(0xFF0277BD)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    return Drawer(
        child: Column(
          children: <Widget>[
            Container(decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.cyan],
              ),),
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Center(
                child: Column(
                    children:<Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(
                          top: 30,
                          bottom:10,
                        ),
                              child: Image.asset(
                                'assets/c1.png',
                                width: 90.9,
                                height: 90.9,
                              ),),
                      Text('Women Safety App',
                        style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..shader = linearGradient),
                      ),
                      Text('Your Safety Our Innovation',
                        style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..shader = linearGradient),
                      ),
                    ]
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.cyan,),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
            ),
            ListTile(
              leading: Icon(Icons.text_snippet,color: Colors.cyan,),
              title: Text(
                'Laws',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(Laws.routeName);
              },
            ),
            ListTile(
              leading: Icon(Icons.pregnant_woman_outlined,color: Colors.cyan,),
              title: Text(
                'Training',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(Training.routeName);
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip,color: Colors.cyan,),
              title: Text(
                'Safety Tips',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(Safety.routeName);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_phone,color: Colors.cyan,),
              title: Text(
                'Contact List',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(ContactList.routeName);
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.star_rate_rounded,color: Colors.cyan,),
            //   title: Text(
            //     'Contact List',
            //     style: TextStyle(
            //       fontSize: 18,
            //     ),
            //   ),
            //   onTap: (){
            //     Navigator.of(context).pop();
            //     Navigator.of(context).pushNamed(ContactList.routeName);
            //   },
            // ),
            // ListTile(
            //   leading: Icon(Icons.star_rate_rounded,color: Colors.cyan,),
            //   title: Text(
            //     'Add Contact',
            //     style: TextStyle(
            //       fontSize: 18,
            //     ),
            //   ),
            //   onTap: (){
            //     Navigator.of(context).pop();
            //     Navigator.of(context).pushNamed(AddContactWidget.routeName);
            //   },
            // ),
            //
            ListTile(
              leading: Icon(Icons.star_rate_rounded,color: Colors.cyan,),
              title: Text(
                'Rating',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(RatingsWidget.routeName);
              },
            ),
          ],
        )
    );

  }

}