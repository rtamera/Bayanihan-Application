import 'package:bayanihan_application/layout/constants.dart';
import 'package:bayanihan_application/province/zambales.dart';
import 'package:flutter/material.dart';

class ShowRegion3Data extends StatefulWidget {
  @override
  _ShowRegion3DataState createState() => _ShowRegion3DataState();
}

class _ShowRegion3DataState extends State<ShowRegion3Data> {
  Color myHexColor = Color(0xffe9c46a);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myHexColor,
        appBar: AppBar(
          backgroundColor: navColor,
          title: Text(
            'CENTRAL LUZON',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              minWidth: 300,
              height: 75,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.red.shade900,
              child: new Text("Zambales",
                  style: new TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  )),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => ShowZambalesData()));
              },
            ),
          ],
        )));
  }
}
