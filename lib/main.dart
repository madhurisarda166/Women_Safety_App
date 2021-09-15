import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:alan_voice/alan_voice.dart';
import 'package:share/share.dart';
import 'package:women_safety_app/AddContact.dart';
import 'package:women_safety_app/ContactList.dart';
import 'package:women_safety_app/Laws.dart';
import 'package:women_safety_app/traning.dart';
import 'details_screen.dart';
import 'home_screen.dart';
import 'rating_screen.dart';
import 'Tips.dart';
import 'package:splashscreen/splashscreen.dart';
import 'dart:async';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:TimeBasedSplash(),
      routes:{
        HomeScreen.routeName: (_) => HomeScreen(),
        Safety.routeName: (_) => Safety(),
        RatingsWidget.routeName: (_) => RatingsWidget(),
        Laws.routeName: (_) => Laws(),
        Training.routeName: (_) => Training(),
        ContactList.routeName: (_) => ContactList(),
        AddContactWidget.routeName: (_) => AddContactWidget()
      },
    );
  }
}
class TimeBasedSplash extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new HomeScreen(),
      title: Text("Women Safety App", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black54),),
      image: new Image.asset('assets/c1.png'),
      photoSize: 130,
      loaderColor: Colors.cyan,
      styleTextUnderTheLoader : const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black54),
      loadingText: new Text('Welcome!!',style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black54),),
      gradientBackground: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Colors.cyan,
          Colors.white
        ],
      ),
    );
  }

}



