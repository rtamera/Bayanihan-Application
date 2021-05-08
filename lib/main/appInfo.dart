import 'package:flutter/material.dart';

class ShowAppInfo extends StatefulWidget {
  @override
  _ShowAppInfoState createState() => _ShowAppInfoState();
}

class _ShowAppInfoState extends State<ShowAppInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        backgroundColor:  Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('About our App'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: Column(children: <Widget>[
            SizedBox(width: 0.0, height: 30.0,),
            Text('Bayanihan Heal as One!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              fontSize: 40.0,
            )
            ),
          ],
          ),
        ),
      ),
    );
  }
}