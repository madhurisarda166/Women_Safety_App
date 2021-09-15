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


class Training extends StatefulWidget {
  static const routeName = '/training-widget';
  Training({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _TrainingState createState() => new _TrainingState();
}

class _TrainingState extends State<Training> {
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
        title: Text('Training',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black54
          ),
        ),),
      drawer: MainDrawer(),
      body:
      Container (
    child: Center(
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


            Text('            Moves for self defense',

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

            Text('1.For starters,memorize the vulnerable places',style: TextStyle(

              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 16,
            ),),
            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Image.asset('assets/1.jpg',
              width: 600.0,
              height: 240.0,
            ),
            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Text('  2. The simplest and most effective moves',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 16,),),
            Container(
              color: Colors.transparent,
              height: 5,
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
                  TextSpan(text: 'If you can not grab your opponents hand, hit him with a fist or with a finger between the collarbones or into his Adams apple.'),

                ],
              ),
              ),),



            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Image.asset('assets/2.jpg',
              width: 600.0,
              height: 240.0,
            ),
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
                  TextSpan(text: 'The most obvious area for an attack is the groin.'),
                  TextSpan(text: 'Hitting this area will literally paralyze the attacker and you will have just enough time to escape.'),
                ],
              ),
              ),),

            /*Text('#  The most obvious area for an attack is the groin.',
              style: TextStyle(
              fontSize: 17,),),*/
            /*const Text('#  Hitting this area will literally paralyze the attacker and you will have just enough time to escape.',
              style: TextStyle(
              fontSize: 17,),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.justify,),*/
            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Image.asset('assets/3.jpg',
              width: 600.0,
              height: 240.0,
            ),
            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Text('  3. If you were grabbed from the front',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 16,),),
            Container(
              color: Colors.transparent,
              height: 5,
              width: 10,
            ),


            Container(
              height: 120,
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
                  TextSpan(text: 'If you were grabbed from the front move your hands forward and make a fist in front of your pelvis.After that, hit the attackers nose with your forehead. This will make the attacker move away from you. Now hit him in the groin with your knee.'),

                ],
              ),
              ),),

            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Image.asset('assets/4.jpg',
              width: 600.0,
              height: 240.0,
            ),
            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),


            Container(
              height: 140,
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
                  TextSpan(text: 'If there is still some room between you and the attacker, there is a way you can protect yourself using your palm. Straighten your left arm and hit the attacker on his chin and nose with your right arm. Then, hit him in the groin. This way the attacker will be disoriented for a long time and he wont be able to move.'),

                ],
              ),
              ),),


            Container(
              color: Colors.white,
              height: 20,
              width: 10,
            ),
            Image.asset('assets/5.jpg',
              width: 600.0,
              height: 240.0,
            ),
            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Text('  4. How to free your hands',
              style: TextStyle(

                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 16,),),
            Container(
              color: Colors.transparent,
              height: 5,
              width: 10,
            ),

            Container(
              height: 140,
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
                  TextSpan(text: 'You can easily escape a stronghold if you remember the "rule of thumb": rotate your arm to the side of the attackers thumb.If he is holding your arm tightly, rotate your wrist toward the thumb. When your arm is under the attackers, pull your arm as strongly as you can.'),

                ],
              ),
              ),),

            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Image.asset('assets/6.jpg',
              width: 600.0,
              height: 240.0,
            ),
            Container(
              color: Colors.transparent
              ,
              height: 20,
              width: 10,
            ),
            Text('  5. If you were grabbed from behind ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 16,),),
            Container(
              color: Colors.transparent,
              height: 5,
              width: 10,
            ),

            Container(
              height: 140,
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
                  TextSpan(text: 'Attackers often come from the back because this is the easiest way to hold the victims arms so that they cant move them. To set yourself free, quickly bend back and try to hit the attacker with the back of your head. Its OK if you cant do it: the point is to make the attacker put one of his legs forward.Now quickly bend down, grab his leg and get up pulling it with you. Now the attacker will lose balance and you will be able to drop even the biggest opponent.'),

                ],
              ),
              ),),
            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Image.asset('assets/7.jpg',
              width: 600.0,
              height: 240.0,
            ),
            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Text('6. If you were approached and grabbed from side',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 16,),),
            Container(
              color: Colors.transparent,
              height: 5,
              width: 10,
            ),

            Container(
              height: 140,
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
                  TextSpan(text: 'An elbow hit is one of the most dangerous hits in all kinds of martial arts. This is exactly the hit you need if you are approached from the side.Hit the attackers temple, jaw, or nose with an arched move. After this, the attacker will take a few steps back. Now hit him in his belly or chest. Elbow hits are so strong that they will disorient any opponent.'),

                ],
              ),
              ),),

            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Image.asset('assets/8.jpg',
              width: 600.0,
              height: 240.0,
            ),
            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Text('  7.  If you were pushed against the wall',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 16,),),
            Container(
              color: Colors.transparent,
              height: 5,
              width: 10,
            ),
            /*Text('# If both of the attackers arms are up, then straighten your palm and hit him in the armpit.',
              style: TextStyle(
                fontSize: 17,),),*/

            Container(
              height: 50,
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
                  TextSpan(text: 'If both of the attackers arms are up, then straighten your palm and hit him in the armpit.'),

                ],
              ),
              ),),

            Container(
              color: Colors.transparent,
              height: 5,
              width: 10,
            ),

            Container(
              height: 50,
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
                  TextSpan(text: 'If one of your arms is down, there is a chance you can hit the opponent in his chest, neck, or jaw.'),

                ],
              ),
              ),),

            Container(
              color: Colors.transparent,
              height: 5,
              width: 10,
            ),

            Container(
              height: 130,
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
                  TextSpan(text: 'But one of the most effective and powerful hits is a hit with your head. Squat a little to be lower than the opponent. Then quickly jump up and hit him in the jaw with your forehead. This move will instantly disorient the attacker and give you a chance to escape.'),

                ],
              ),
              ),),

            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Image.asset('assets/9.jpg',
              width: 600.0,
              height: 240.0,
            ),
            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
              color: Colors.transparent,
              child: Text('"We hope you never have to use these moves, but if you do happen to find yourself in a threatening situation, remember the vulnerable areas !"',
                style: TextStyle(

                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.cyan,

                ),
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.justify,
              ),),
            Container(
              color: Colors.transparent,
              height: 20,
              width: 10,
            ),
          ],
        ),
      ),

        margin: new EdgeInsets.symmetric(horizontal: 8,vertical: 8),

        padding: EdgeInsets.fromLTRB(5,5, 5, 5),
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
