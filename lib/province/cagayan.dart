import 'package:flutter/material.dart';

class ShowCagayanData extends StatefulWidget {
  @override
  _ShowCagayanDataState createState() => _ShowCagayanDataState();
}

class _ShowCagayanDataState extends State<ShowCagayanData> {
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