import 'package:women_safety_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui' show ImageFilter;


import 'main_drawer.dart';


class RatingsWidget extends StatefulWidget {
  static const routeName = '/rating-widget';
  @override
  _RatingsWidgetState createState() => _RatingsWidgetState();
}

class _RatingsWidgetState extends State<RatingsWidget> {
  int _rating = 0;

  void rate(int rating) {
    //Other actions based on rating such as api calls.
    setState(() {
      _rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.cyan, Colors.white],
              ),
            ),
          ),
          title: new Text("Rating",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),),
        ),
        drawer: MainDrawer(),
        body:
        Container(child:
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/c1.png',
                  width: 150.9,
                  height: 150.9),
              Row( //ROW 2
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Rate This App',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //ROW 1
                children: <Widget>[
                  new GestureDetector(
                    child: new Icon(
                      Icons.star_rate_rounded,
                      color: _rating >= 1 ? Colors.orange : Colors.grey,
                      size: 60,
                    ),
                    onTap: () => rate(1),
                  ),
                  new GestureDetector(
                    child: new Icon(
                      Icons.star_rate_rounded,
                      color: _rating >= 2 ? Colors.orange : Colors.grey,
                      size: 60,
                    ),
                    onTap: () => rate(2),
                  ),
                  new GestureDetector(
                    child: new Icon(
                      Icons.star_rate_rounded,
                      color: _rating >= 3 ? Colors.orange : Colors.grey,
                      size: 60,
                    ),
                    onTap: () => rate(3),
                  ),
                  new GestureDetector(
                    child: new Icon(
                      Icons.star_rate_rounded,
                      color: _rating >= 4 ? Colors.orange : Colors.grey,
                      size: 60,
                    ),
                    onTap: () => rate(4),
                  ),
                  new GestureDetector(
                    child: new Icon(
                      Icons.star_rate_rounded,
                      color: _rating >= 5 ? Colors.orange : Colors.grey,
                      size: 60,
                    ),
                    onTap: () => rate(5),
                  )
                ],
              ),
              Row( // ROW 3
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        _buildPopupDialog();
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => _buildPopupDialog(context),
                        //   ),
                        // );
                      },
                      textColor: Colors.black54,

                      padding: const EdgeInsets.all(0.0),
                      color: Colors.cyan,
                      child: const Text('Submit'),
                    ),
                  ]),
            ]),
          margin: new EdgeInsets.symmetric(horizontal: 8, vertical: 8),

          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.cyan,
              width: 5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        )
    );
  }



  _buildPopupDialog() {
    showDialog(context: context,
    builder: (BuildContext context){
      return BackdropFilter(
        child: AlertDialog(
          title: Text('Feedback Submitted Successfully!'),
      content: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Your feedback helps us make your experience better"),
          ],
        ),
          actions: [
            FlatButton(
            onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),);
                // Navigator.of(context).pop();

              },
              textColor: Theme
                  .of(context)
                  .primaryColor,
              child: const Text('OK'),
            ),
          ],
        ),
        filter: ImageFilter.blur(
          sigmaX: 6,
          sigmaY: 6,
        ),
      );
    });



  }
}