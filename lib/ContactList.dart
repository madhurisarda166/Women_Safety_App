import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:women_safety_app/utils/database_helper.dart';

import 'home_screen.dart';
import 'models/Contact.dart';

class ContactList extends StatefulWidget {
  static const routeName = '/contact-widget';
  @override
  _ContactListWidgetState createState() => _ContactListWidgetState();
}

class _ContactListWidgetState extends State<ContactList> {
  Contact _contact = Contact();
  List<Contact> _contacts = [];
  DatabaseHelper _dbHelper = DatabaseHelper.instance;
  final _formKey = GlobalKey<FormState>();
  final _ctrlName = TextEditingController();
  final _ctrlMobile = TextEditingController();

  _makingPhoneCall() async {
     String url = 'tel:$_contacts[]';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  void initState(){
    super.initState();
    setState(() {
      _dbHelper = DatabaseHelper.instance;
    });
    _refreshContactList();
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
        ),),
        title: new Text("ContactList",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),),
      ),
      body: Center(

    child: Column(

    mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        _form(),_list()
      ],
    ),
    ),
    );
  }
  _form() =>
      Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                
              decoration: InputDecoration(
              border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(50.0),
              ),
              borderSide: new BorderSide(
                color: Colors.black,
                width: 100.0,
              ),
            ),
            labelText: "Name",
            prefixIcon: Icon(Icons.drive_file_rename_outline, color:Colors.cyan),
            labelStyle: TextStyle(
              fontSize: 14.0,
            ),
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 10.0,
            ),
          ),
                controller: _ctrlName,
                onSaved: (val) => setState(() => _contact.name  = val),
                validator: (val)=>(val.length==0 ?'This field is required':null),
              ),
              SizedBox(height: 9.0,),
              TextFormField(
                controller: _ctrlMobile,
                decoration: InputDecoration(
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(50.0),
              ),
              borderSide: new BorderSide(
                color: Colors.black,
                width: 100.0,
              ),
            ),
            labelText: "Contact Number",
            prefixIcon: Icon(Icons.contact_phone_outlined, color:Colors.cyan),
            labelStyle: TextStyle(
              fontSize: 14.0,
            ),
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 10.0,
            ),
          ),
                onSaved: (val) => setState(() => _contact.mobile   = val),
                validator: (val)=>(val.length<10 ?'Atleast 10 characters required':null),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: _onSubmit,
                  child: Text('Add Contact'),
                  color: Colors.cyan,
                  textColor: Colors.white,
                ),
              )
            ],
          ),
        ),
      );

  _refreshContactList() async{
    List<Contact> x = await _dbHelper.fetchContact();
    setState((){
      _contacts = x;
    });
  }
  _onSubmit() async {
    var form = _formKey.currentState;
    if(form.validate()){
      form.save();


      //await _dbHelper.insertContact(_contact);
      // setState(() {
      //   _contacts.add(Contact(id:null,name:_contact.name,mobile: _contact.mobile));
      // });



      if(_contact.id == null)
        await _dbHelper.insertContact(_contact);
      else
        await _dbHelper.updateContact(_contact);
      _resetForm();
      _refreshContactList();
    }

  }

  _resetForm(){
    setState((){
      _formKey.currentState.reset();
      _ctrlName.clear();
      _ctrlMobile.clear();
      _contact.id = null;
    });
  }
  _list() => Expanded(child: Card(margin: EdgeInsets.fromLTRB(20, 30, 20, 0),

    child: ListView.builder(itemBuilder: (context,index){
      return Column(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.account_circle,
                  color: Colors.cyan,size:40.0
              ) ,
              title: Text(_contacts[index].name.toUpperCase(),
                style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold ),
              ),
              subtitle: Text(_contacts[index].mobile),
              trailing: IconButton(
                  icon: Icon(Icons.delete_sweep,color: Colors.cyan),
                  onPressed: ()
                  {
                    showDialog(context: context,
    builder: (BuildContext context){
      return BackdropFilter(
        child: AlertDialog(
          title: Text('Do you want to delete?'),
      content: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Contact will be permanently deleted!"),
          ],
        ),
          actions: [
            FlatButton(
            onPressed: ()async {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => ContactList(),

                  )

                  ,);
                // Navigator.of(context).pop();
              await _dbHelper.deleteContact(_contacts[index].id);
                     _resetForm();
                     _refreshContactList();
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
                                ),
              onTap: (){
                setState((){
                  _contact = _contacts[index];
                  _ctrlName.text = _contacts[index].name;
                  _ctrlMobile.text = _contacts[index].mobile;
                });
              }),



          Divider(
            height: 5.0,
          )
        ],
      );
    },
      padding: EdgeInsets.all(8),
      itemCount: _contacts.length,),
  ),);
}





