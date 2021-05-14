import 'package:flutter/material.dart';

class CardSmall extends StatelessWidget {
  CardSmall(
      {this.title = "Placeholder Title",
      this.status = "",
      this.req1 = "",
      this.req2 = "",
      this.req3 = "",
      this.req4 = "",
      this.req5 = "",
      this.tap = defaultFunc});

  final String status;
  final String req1;
  final String req2;
  final String req3;
  final String req4;
  final String req5;
  final Function tap;
  final String title;

  static void defaultFunc() {
    print("the function works!");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Flexible(
        child: Container(
          color: Colors.amber,
          height: 150,
          child: GestureDetector(
            onTap: tap,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                      flex: 11,
                      child: Container(
                          decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0)),
                      ))),
                  Flexible(
                    flex: 20,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 100.0, bottom: 100.0, left: 100.0, right: 100.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // data from csv
                          Text(title,
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 12,
                                  fontFamily: "Poppins")),
                          Text(req1,
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 12,
                                  fontFamily: "Poppins")),
                          Text(req2,
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 12,
                                  fontFamily: "Poppins")),
                          Text(req3,
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 12,
                                  fontFamily: "Poppins")),
                          Text(req4,
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 12,
                                  fontFamily: "Poppins")),
                          Text(req5,
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 12,
                                  fontFamily: "Poppins")),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              status,
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 11,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
