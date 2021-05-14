import 'package:bayanihan_application/layout/constants.dart';
import 'package:flutter/material.dart';

class ShowAppInfo extends StatefulWidget {
  @override
  _ShowAppInfoState createState() => _ShowAppInfoState();
}

class _ShowAppInfoState extends State<ShowAppInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: navColor,
        title: Text('About our App', style: navBar),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),
            Image.asset(
              "assets/icon.png",
              height: 250.0,
              width: 250.0,
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Spacer(),
                  Center(
                    child: Text(
                      "Bayanihan Heal As One Application",
                      style: kHeadingTextStyle,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: Text(
                        "This app serves as a compilation of different travel requirements per Local Government Unit (LGU). It also presents the Community Quarantine (CQ) status as well as the general performance of the respective LGU in terms of COVID response. This will be updated every day to help people make relevant and timely traveling decisions in cases of Official Business, leisure, or other traveling purposes. ",
                        style: kSubTextStyle2,
                        textAlign: TextAlign.justify),
                  ),
                ],
              ),
            ),
            SizedBox(width: 0, height: 30.0),
          ],
        ),
      ),
    );
  }
}
