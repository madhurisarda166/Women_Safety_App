import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:women_safety_app/main.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

_makingPhoneCall() async {
  const url = 'tel:100';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_WOMENHELPLINE() async {
  const url = 'tel:1090';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_DomesticAbuse() async {
  const url = 'tel:181';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_NationalEmergencyNumber() async {
  const url = 'tel:112';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_Ambulance() async {
  const url = 'tel:102';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_Fire() async {
  const url = 'tel:101';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
class Emergency_Numbers extends StatelessWidget{
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
        title: Text('Emergency Numbers',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black54
          ),
        ),),
      body:Container(
        alignment: Alignment.topCenter,
        margin: new EdgeInsets.symmetric(horizontal: 8, vertical: 8),

        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.cyan,
            width: 5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(child: Slidable(key:ValueKey(ListTile()),
                actionPane: SlidableDrawerActionPane(),
                secondaryActions: <Widget>[
                  IconSlideAction(caption: 'Call',
                    color: Colors.green,
                    icon: Icons.call,
                    closeOnTap: false,
                    onTap: (_makingPhoneCall),
                  )
                ],
                dismissal: SlidableDismissal(child: SlidableDrawerDismissal()),
                child:  ListTile(
                  leading: Icon(Icons.local_police,color: Colors.cyan,),
                  title: Text(
                    'Call Police',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              ),
              Expanded(child: Slidable(key:ValueKey(ListTile()),
                actionPane: SlidableDrawerActionPane(),
                secondaryActions: <Widget>[
                  IconSlideAction(caption: 'Call',
                    color: Colors.green,
                    icon: Icons.call,
                    closeOnTap: false,
                    onTap: (_WOMENHELPLINE),
                  )
                ],
                dismissal: SlidableDismissal(child: SlidableDrawerDismissal()),
                child:  ListTile(
                  leading: Icon(Icons.pregnant_woman_sharp,color: Colors.cyan,),
                  title: Text(
                    'Call Women Helpline',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              ),
              Expanded(child: Slidable(key:ValueKey(ListTile()),
                actionPane: SlidableDrawerActionPane(),
                secondaryActions: <Widget>[
                  IconSlideAction(caption: 'Call',
                    color: Colors.green,
                    icon: Icons.call,
                    closeOnTap: false,
                    onTap: (_DomesticAbuse),
                  )
                ],
                dismissal: SlidableDismissal(child: SlidableDrawerDismissal()),
                child:  ListTile(
                  leading: Icon(Icons.call,color: Colors.cyan,),
                  title: Text(
                    'Call Domestic Abuse Helpline',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              ),
              Expanded(child: Slidable(key:ValueKey(ListTile()),
                actionPane: SlidableDrawerActionPane(),
                secondaryActions: <Widget>[
                  IconSlideAction(caption: 'Call',
                    color: Colors.green,
                    icon: Icons.call,
                    closeOnTap: false,
                    onTap: (_NationalEmergencyNumber),
                  )
                ],
                dismissal: SlidableDismissal(child: SlidableDrawerDismissal()),
                child:  ListTile(
                  leading: Icon(Icons.call,color: Colors.cyan,),
                  title: Text(
                    'Call National Emergency Number',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              ),
              Expanded(child: Slidable(key:ValueKey(ListTile()),
                actionPane: SlidableDrawerActionPane(),
                secondaryActions: <Widget>[
                  IconSlideAction(caption: 'Call',
                    color: Colors.green,
                    icon: Icons.call,
                    closeOnTap: false,
                    onTap: (_Ambulance),
                  )
                ],
                dismissal: SlidableDismissal(child: SlidableDrawerDismissal()),
                child:  ListTile(
                  leading: Icon(Icons.directions_car_outlined,color: Colors.cyan,),
                  title: Text(
                    'Call Ambulance',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              ),
              Expanded(child: Slidable(key:ValueKey(ListTile()),
                actionPane: SlidableDrawerActionPane(),
                secondaryActions: <Widget>[
                  IconSlideAction(caption: 'Call',
                    color: Colors.green,
                    icon: Icons.call,
                    closeOnTap: false,
                    onTap: (_Fire),
                  )
                ],
                dismissal: SlidableDismissal(child: SlidableDrawerDismissal()),
                child:  ListTile(
                  leading: Icon(Icons.fire_extinguisher_sharp,color: Colors.cyan,),
                  title: Text(
                    'Call Fire Brigade',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              ),
               ListTile(
                 leading: Icon(Icons.arrow_back_sharp,color: Colors.cyan,),
                 title: Text(
                  '( Swipe Left To Call )',
                   style: TextStyle(
                   fontSize: 18,
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


