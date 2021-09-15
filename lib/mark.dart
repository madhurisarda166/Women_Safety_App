import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:share/share.dart';

import 'live location.dart';
import 'main_drawer.dart';

void main() => runApp(MapScreen());

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Map",
      home: MapActivity(),
    );
  }
}

class MapActivity extends StatefulWidget {
  @override
  _MapActivityState createState() => _MapActivityState();
}

class _MapActivityState extends State<MapActivity> {
  LatLng _center ;
  Position currentLocation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserLocation();
  }

  Future<Position> locateUser() async {
    return Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  getUserLocation() async {
    currentLocation = await locateUser();
    setState(() {
      _center = LatLng(currentLocation.latitude, currentLocation.longitude);
    });
    print('center $_center');
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => My()
              ),);
          },
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.white],
            ),
          ),
        ),
        title: Text('Share Live Location',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),),
      body:
  ListView(children: <Widget>[

    Container(
    color: Colors.transparent,
    height: 400,
    width: 100,
    child: Image.asset('assets/location.jpg',
    width: 90.0,
    height: 100.0,
    ),
    ),
    Container(
    height: 0,
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
                Share.share('https://www.google.com/maps/search/?api=1&query=${currentLocation.latitude},${currentLocation.longitude}');
              },
                   textColor: Colors.black,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.cyan,width: 7),
               ),
                icon: Icon(Icons.location_on, color: Colors.cyan,),
                 padding: EdgeInsets.fromLTRB(10, 15, 164, 15),
                 label: const Text('Share Live Location',maxLines: 2,
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 15,
                   ),
               overflow: TextOverflow.ellipsis,
              textDirection: TextDirection.ltr,
                textAlign: TextAlign.justify,),
              ),
              Container(
           height: 5,
            width: 100,
           ),
           ],
       ),
       ),
    )
     ],
     )
     );
      }
}