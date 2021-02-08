import 'package:flutter/material.dart';

import 'screens/Screen_1.dart';

class WelcomeScreen extends StatelessWidget {


  void _funOne(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return ScreenNo1();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink, //Theme.of(context).accentColor,
          title: Text('Welcome!')),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Container(
              margin: EdgeInsets.all(20),
              child: Text(
                'Welcome to Our Recipes App \nHere you will find Recipes to Different food items.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            elevation: 4,
            padding: const EdgeInsets.all(12),
            color: Colors.green[600],
            onPressed: () {
              _funOne(context);
            },
            child: const Text('Lets Start!',
                style: TextStyle(fontSize: 18, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
