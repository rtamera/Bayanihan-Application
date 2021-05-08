import 'package:bayanihan_application/layout/constants.dart';
import 'package:flutter/material.dart';

class TravelCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const TravelCard({
    Key key,
    this.image,
    this.title,
    this.text,
  }) : super(key: key);

  static void defaultFunc() {
    print("the function works!");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SizedBox(
          height: 156,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 8),
                      blurRadius: 24,
                      color: kShadowColor,
                    ),
                  ],
                ),
              ),
              Image.asset(image, height: 120.0, width: 140.0,),
              Positioned(
                left: 150,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  height: 170,
                  width: MediaQuery.of(context).size.width - 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        title,
                        style: kTitleTextstyle.copyWith(
                          fontSize: 23,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          text,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
