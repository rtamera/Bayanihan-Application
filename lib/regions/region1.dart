import 'package:bayanihan_application/province/pangasinan.dart';
import 'package:flutter/material.dart';

class ShowRegion1Data extends StatefulWidget {
  @override
  _ShowRegion1DataState createState() => _ShowRegion1DataState();
}

class _ShowRegion1DataState extends State<ShowRegion1Data> {
  Color myHexColor = Color(0xffe9c46a);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  myHexColor,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('ILOCOS REGION'),
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
                      "Pangasinan",
                      style: new TextStyle(
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      )
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) =>
                            ShowPangasinanData())
                    );
                  },
                ),
              ],
            )
        )
    );
  }
}