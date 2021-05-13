import 'package:flutter/material.dart';
import '../province/benguet.dart';

class ShowCarData extends StatefulWidget {
  @override
  _ShowCarDataState createState() => _ShowCarDataState();
}

class _ShowCarDataState extends State<ShowCarData> {
  Color myHexColor = Color(0xffe9c46a);
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor:  myHexColor,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: new Text('CORDILLERA ADMINISTRATIVE REGION', style: new TextStyle(fontSize: 15),),
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
                    "Benguet",
                    style: new TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    )
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) =>
                          ShowBenguetData())
                  );
                },
              ),
          ],
          ),
        ),
    );
  }
}