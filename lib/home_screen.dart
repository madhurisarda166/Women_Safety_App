import 'package:alan_voice/alan_voice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:women_safety_app/emergency_numbers.dart';
import 'package:women_safety_app/ContactList.dart';

import 'package:women_safety_app/live%20location.dart';
import 'package:women_safety_app/map.dart';
import 'package:women_safety_app/pages.dart';
import './main_drawer.dart';
import 'main.dart';
import 'package:url_launcher/url_launcher.dart';

import 'mark.dart';


void main() => runApp(MyApp());

_makingPhoneCall() async {
  const url = 'tel:100';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
class HomeScreen extends StatefulWidget {
  static const routeName = '/homescreen-widget';
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();

  @override
  Widget build(BuildContext context) {
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedItem = 0;
  var _pages = [Page1(), Page2(), Page3(),Page4(),Page5()];
  void _navigateTo(String screen) {
    switch (screen) {
      case "navigation":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContactList()),
        );
        break;
      case "back":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      default:
        print("Unknown screen: $screen");
    }
  }
  void _handleCommand(Map<String, dynamic> command) {
    switch (command["command"]) {
      case "navigation":
        _navigateTo(command["route"]);
        break;
      default:
        debugPrint("Unknown command: ${command}");
    }
  }
  _HomeScreenState() {
    //Init Alan with sample project id
    AlanVoice.addButton(
        "74122e46c62492d0956c3dc643fe29bc2e956eca572e1d8b807a3e2338fdd0dc/stage",
        buttonAlign: AlanVoice.BUTTON_ALIGN_RIGHT);
    AlanVoice.callbacks.add((command) => _handleCommand(command.data));
  }

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF0277BD), Color(0xFF81D4FA)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.white],
            ),
          ),
        ),
        title: Text('Women Safety App',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),),
      drawer: MainDrawer(),
      body: Center(
          child: Column(
              children: <Widget>[
                Container(
                  color: Colors.transparent,
                  height: 20,
                  width: 10,
                ),
                Text('Your Safety Our Innovation',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..shader = linearGradient),
                ),
                Container(
                  color: Colors.transparent,
                  height: 20,
                  width: 10,
                ),
                Container(
                  width: 250.0,
                  height: 250.0,
                        child: Image.asset(
                            'assets/c1.png',
                            width: 150.9,
                            height: 150.9
                        ),
                  ),
                Text('',
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.lightBlueAccent,
                          offset: Offset(5.0, 5.0),
                        ),
                        Shadow(
                          color: Colors.white,
                          blurRadius: 10.0,
                          offset: Offset(-10.0, 5.0),
                        ),
                      ],
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..shader = linearGradient),
                ),
                Container(
                  color: Colors.transparent,
                  height: 20,
                  width: 10,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: new FloatingActionButton.extended(
                    elevation: 4.0,
                    heroTag: null,
                    icon: const Icon(Icons.search_sharp,color: Colors.black54),
                    label: const Text('Search Near By Areas',style: TextStyle(color: Colors.black54),),
                    backgroundColor: Colors.cyan,
                    onPressed: () {
                      MapUtils.openMap(30.625168,131.751500);
                    },
                  ),),
                Container(
                  height: 5,
                  width: 5,
                  color: Colors.transparent,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: new FloatingActionButton.extended(
                    elevation: 4.0,
                    heroTag: null,
                    icon: const Icon(Icons.contact_phone_sharp,color: Colors.black54),
                    label: const Text('Call Police',style: TextStyle(color: Colors.black54),),
                    backgroundColor: Colors.cyan,
                    onPressed: _makingPhoneCall,
                  ),
                ),
                Expanded(
                  child: _pages[_selectedItem],
                ),
],),
          ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4.0,
        icon: const Icon(Icons.location_on),
        label: const Text('Share Live Location'),
        backgroundColor: Colors.black26,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => My()
            ),);
        },
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.cyan,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.call),
              iconSize: 40,
              onPressed: () {
                Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => Emergency_Numbers()
                ),);
              },
            ),
            IconButton(
              icon: Icon(Icons.message),
              iconSize: 40,
              onPressed: () {
                Share.share("Emergency!!!! Help Me I Am In Trouble!!Please Contact Me Immediately.");
              },
            )
          ],
        ),
      ),
    );
  }
}
