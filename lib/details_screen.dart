import 'package:flutter/material.dart';

import 'main_drawer.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class safety extends StatefulWidget {
  static const routeName = '/safety-widget';
  @override
  _safetyState createState() => _safetyState();
}

class _safetyState extends State<safety> {
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF0277BD), Color(0xFF81D4FA)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    return new Scaffold(
      appBar: new AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.white],
            ),
          ),
        ),
        title: Text('Safety Tips',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black54
          ),
        ),),
      drawer: MainDrawer(),
      body: new Center(
        child: new ListView(
          children: [
            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Container(
              color: Colors.transparent,
              height: 80,
              width: 20,
              child: Image.asset('assets/0.jpg',
                width: 40.0,
                height: 40.0,
              ),
            ),
            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),


            Text('                    Some Safety tips ',

              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.cyan,

              ),),



            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),


            Container(
              height: 70,
              width: 100,
              padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
              child:

              RichText(text: TextSpan(style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  color: Colors.black54
              ),
                children: [

                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(Icons.subdirectory_arrow_right_rounded),
                    ),
                  ),
                  TextSpan(text: 'Carry a pepper spray with you, always and keep it handy. Don’t tuck it too low in your bag.'),

                ],
              ),
              ),),



            Container(
              color: Colors.transparent,
              height: 5,
              width: 10,
            ),
            Container(
              height: 110,
              width: 100,
              padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
              child:

              RichText(text: TextSpan(style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  color: Colors.black54
              ),
                children: [
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(Icons.subdirectory_arrow_right_rounded),
                    ),
                  ),
                  TextSpan(text: 'Always pour your own drinks at parties and don’t ever take drinks from complete strangers or even friends.'),
                  TextSpan(text: 'If you’ve left your drink unattended for even a few minutes, leave it and get a fresh drink.'),
                  TextSpan(text: 'It may have been spiked when you weren’t looking.'),
                ],
              ),
              ),),


            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Container(
              height: 110,
              width: 100,
              padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
              child:

              RichText(text: TextSpan(style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  color: Colors.black54
              ),
                children: [

                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(Icons.subdirectory_arrow_right_rounded),
                    ),
                  ),
                  TextSpan(text: 'Avoid using mobile phones it makes you less alert and also remember that phone is the first thing your attacker will throw so try to hide it,'),
                  TextSpan(text: 'meanwhile activate all you speed dials and if you have smart phone make use of emergency apps. '),
                ],
              ),
              ),),

            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Container(
              height: 70,
              width: 100,
              padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
              child:

              RichText(text: TextSpan(style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  color: Colors.black54
              ),
                children: [

                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(Icons.subdirectory_arrow_right_rounded),
                    ),
                  ),
                  TextSpan(text: 'When you are travelling in an auto alone, make sure you share the auto number with someone in your family even if it’s during the day.'),
                ],
              ),
              ),),


            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Container(
              height: 110,
              width: 100,
              padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
              child:

              RichText(text: TextSpan(style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  color: Colors.black54
              ),
                children: [

                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(Icons.subdirectory_arrow_right_rounded),
                    ),
                  ),
                  TextSpan(text: 'Whenever you are posting anything on social media, make sure you don’t do it in real-time. Because if you do, you’re telling people on your social media about your'),
                  TextSpan(text: 'whereabouts. Delay those posts by say, 20-30 minutes.'),
                ],
              ),
              ),),

            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Container(
              height: 60,
              width: 100,
              padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
              child:

              RichText(text: TextSpan(style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  color: Colors.black54
              ),
                children: [

                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(Icons.subdirectory_arrow_right_rounded),
                    ),
                  ),
                  TextSpan(text: 'If you feel someone is stalking you, try to find a crowded place and call someone for help.'),
                ],
              ),
              ),),

            Container(
              color: Colors.transparent,
              height: 10,
              width: 10,
            ),
            Container(
              height: 80,
              width: 100,
              padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
              child:

              RichText(text: TextSpan(style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  color: Colors.black54
              ),
                children: [

                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(Icons.subdirectory_arrow_right_rounded),
                    ),
                  ),
                  TextSpan(text: 'Please trust and make good use of your ‘gut feel’ or ‘intuition’ or ‘sixth sense’ in each & every place and situation.'),
                ],
              ),
              ),),

          ],
        ),
      ),
    ); }
}
