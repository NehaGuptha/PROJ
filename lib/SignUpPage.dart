import 'package:flutter/material.dart';
import 'colors.dart';
import 'inputFields.dart';




class SignUpPage extends StatefulWidget {
  final String pageTitle;

  SignUpPage({Key key, this.pageTitle}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  static const authPlateDecoration = BoxDecoration(
      color: white,
      boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(0, 0, 0, .1),
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(0, 1))
      ],
      borderRadius: BorderRadiusDirectional.only(
          bottomEnd: Radius.circular(20), bottomStart: Radius.circular(20)));
  static const taglineText = TextStyle(color: Colors.grey, fontFamily: 'Poppins');
  static const contrastText = TextStyle(color: primaryColor, fontFamily: 'Poppins');
  static const h3 = TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.w800,
      fontFamily: 'Poppins');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Text('Sign Up',
            style: TextStyle(
                color: Colors.grey, fontFamily: 'Poppins', fontSize: 15)),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              // Navigator.of(context).pushReplacementNamed('/signin');
              Navigator.pop(context);

            },
            child: Text('Sign In', style: contrastText),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
        padding: const EdgeInsets.all(9.0),
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Welcome to Farm Fresh and Easy!', style: h3),
                Text('Let\'s get started', style: taglineText),
                farmTextInput('Username'),
                Text('   '),
                farmTextInput('Full Name'),
                Text('   '),
                farmEmailInput('Email Address'),
                Text('   '),
                farmPasswordInput('Password')
              ],
            ),
            Positioned(
              bottom: 15,
              right: -15,
              child: FlatButton(
                onPressed: () {

                },
                color: primaryColor,
                padding: EdgeInsets.all(13),
               shape: CircleBorder(),
                child: Icon(Icons.arrow_forward, color: white),
              ),
            )
          ],
        ),
        height: 450,
        
        width: double.infinity,
        decoration: authPlateDecoration,
      ),
        ],
      )
    );
  }
}
