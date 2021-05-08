
import 'package:bayanihan_application/layout/constants.dart';
import 'package:bayanihan_application/layout/travel_card.dart';
import 'package:bayanihan_application/main/counter.dart';
import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShowZambalesData extends StatefulWidget {
  @override
  _ShowZambalesDataState createState() => _ShowZambalesDataState();
}

List<List<dynamic>> _data = [];

class _ShowZambalesDataState extends State<ShowZambalesData> {
 //convert data from csv file to a list
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/res/zambales_data.csv");
    List<List<dynamic>> _listData = CsvToListConverter().convert(_rawData);
    _data = _listData;
    setState(
      () {
        _data = _listData;
      },
    );
  }

  void initState() {
    super.initState();
    _loadCSV();
  }

  Widget build(BuildContext context) {
    _loadCSV();
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text("Cities/Municipalities"),
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                  child: ListView.builder(
                      itemCount: _data == null ? 0 : _data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return new InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  new MaterialPageRoute(builder: (context) {
                                return new SingleChildScrollView(
                                    child: new Card(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  elevation: 8,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Case Update\n",
                                                  style: kTitleTextstyle,
                                                ),
                                                TextSpan(
                                                  text:
                                                      "Newest update May 8, 2021",
                                                  style: TextStyle(
                                                    color: kTextLightColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "COVID-19 RESPONSE",
                                            style: TextStyle(
                                              color: kPrimaryColor,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 4),
                                              blurRadius: 30,
                                              color: kShadowColor,
                                            ),
                                          ],
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            //Case updates card
                                            Counter(
                                              color: kInfectedColor,
                                              number: _data[index][9],
                                              title: "Active",
                                            ),
                                            Counter(
                                              color: kDeathColor,
                                              number: _data[index][10],
                                              title: "Deaths",
                                            ),
                                            Counter(
                                              color: kRecovercolor,
                                              number: _data[index][11],
                                              title: "Recovered",
                                            ),
                                            Counter(
                                              color: kPrimaryColor,
                                              number: _data[index][12],
                                              title: "Total Cases",
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            _data[index][2]
                                                .toString()
                                                .toUpperCase(),
                                            style: kTitleTextstyle,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "TRAVEL REQUIREMENTS",
                                            style: kTitleTextstyle,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Text(_data[index][3],
                                          style: kTitleTextstyle2),
                                      SizedBox(height: 10),
                                      //Travel Requirements card
                                      TravelCard(
                                        text: _data[index][4].toString(),
                                        image: "images/2.png",
                                        title: "Requirement # 1",
                                      ),
                                      TravelCard(
                                        text: _data[index][5].toString(),
                                        image: "/images/1.png",
                                        title: "Requirement # 2",
                                      ),
                                      TravelCard(
                                        text: _data[index][6].toString(),
                                        image: "/images/5.png",
                                        title: "Requirement # 3",
                                      ),
                                      TravelCard(
                                        text: _data[index][7].toString(),
                                        image: "/images/3.png",
                                        title: "Requirement # 4",
                                      ),
                                      TravelCard(
                                        text: _data[index][8].toString(),
                                        image: "/images/4.png",
                                        title: "Requirement # 5",
                                      ),
                                      SizedBox(height: 30),
                                    ],
                                  ),
                                ),
                                );
                              },
                              ),
                              );
                            },
                            //create cards for the cities
                            child: new Card(
                              elevation: 20,
                              color: Colors.teal.shade900,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: SizedBox(
                                //Contains our text in card
                                width: 300,
                                height: 75,
                                child: Center(
                                  child: Text(
                                    _data[index][2]
                                        .toString(), // name of cities
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontFamily: 'Poppins',
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            );
                      }
                      ),
                      ),
            ],
            ),
            );
  }
}
