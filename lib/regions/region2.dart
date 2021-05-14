import 'package:bayanihan_application/layout/constants.dart';
import 'package:bayanihan_application/province/cagayan.dart';
import 'package:flutter/material.dart';

class ShowRegion2Data extends StatefulWidget {
  @override
  _ShowRegion2DataState createState() => _ShowRegion2DataState();
}

class _ShowRegion2DataState extends State<ShowRegion2Data> {
  Color myHexColor = Color(0xffe9c46a);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myHexColor,
        appBar: AppBar(
          backgroundColor: navColor,
          title: Text(
            'CAGAYAN VALLEY',
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
              child: new Text("Cagayan",
                  style: new TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  )),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => ShowCagayanData()));
              },
            ),
          ],
        )));
  }
}
