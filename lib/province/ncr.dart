import 'package:flutter/material.dart';

class ShowNCRData extends StatefulWidget {
  @override
  _ShowNCRDataState createState() => _ShowNCRDataState();
}

class _ShowNCRDataState extends State<ShowNCRData> {
  Color myHexColor = Color(0xffe9c46a);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  myHexColor,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('NATIONAL CAPITAL REGION'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Data'),
    );
  }
}