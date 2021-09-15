import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:women_safety_app/Laws.dart';
import 'package:women_safety_app/traning.dart';
import 'contact.dart';
import 'emergency_numbers.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Center(child: Column(children: <Widget>[
        ]))));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Center(child: Column(children: <Widget>[
          IconButton(
            icon: Image.asset('assets/emerg.jpg'),
            iconSize: 160,
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new Emergency_Numbers()));
            },),
          Text('Click Me'),
        ]))));
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Center(child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.cyan, Colors.white],
                ),
              ),
              child: FlatButton(child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Text('Send SMS'),
                  new Icon(Icons.sms_outlined),
                ],
              ),
                textColor: Colors.black54,
                  onPressed: () {
                    Share.share("Help Me I Am In Trouble!! Please Contact Me Immediately!!");
                  }, ))        ]))));
  }
}
class Page4 extends StatefulWidget {
  const Page4({Key key}) : super(key: key);

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4>  with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Center(child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.cyan, Colors.white],
                ),
              ),
              child: FlatButton(child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Text('Laws'),
                  new Icon(Icons.text_snippet_outlined),
                ],
              ),
                textColor: Colors.black54,
                onPressed: (){
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new Laws()));
                }, ))
        ]))));
  }
  @override
  bool get wantKeepAlive => true;
}
class Page5 extends StatefulWidget {
  const Page5({Key key}) : super(key: key);

  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5>  with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Center(child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.cyan, Colors.white],
                ),
              ),
              child: FlatButton(child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Text('Training'),
                  new Icon(Icons.pregnant_woman_outlined),
                ],
              ),
                textColor: Colors.black54,
                onPressed: (){
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new Training()));
                }, ))
        ]))));
  }

  @override
  bool get wantKeepAlive => true;
}


class ListViewPage extends StatelessWidget {
  const ListViewPage({Key key}) : super(key: key);

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
        title: new Text("Infinite List",
          style: TextStyle(
            color: Colors.black54,
          ),),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(leading: Text("$index"), title: Text("Number $index"));
        },
      ),
    );
  }
}
