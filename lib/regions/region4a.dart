import 'package:bayanihan_application/province/rizal.dart';
import 'package:flutter/material.dart';

class ShowRegion4AData extends StatefulWidget {
  @override
  _ShowRegion4ADataState createState() => _ShowRegion4ADataState();
}

class _ShowRegion4ADataState extends State<ShowRegion4AData> {
  Color myHexColor = Color(0xffe9c46a);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  myHexColor,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('CALABARZON'),
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
                  child: new Text(
                      "Rizal",
                      style: new TextStyle(
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      )
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) =>
                            ShowRizalData())
                    );
                  },
                ),
              ],
            )
        )
    );
  }
}