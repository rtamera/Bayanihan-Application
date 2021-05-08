import 'package:flutter/material.dart';

class ShowBenguetData extends StatefulWidget {
  @override
  _ShowBenguetDataState createState() => _ShowBenguetDataState();
}

class _ShowBenguetDataState extends State<ShowBenguetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Cities/Municipalities'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Data'),
    );
  }
}
