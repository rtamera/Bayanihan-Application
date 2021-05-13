import 'package:bayanihan_application/layout/constants.dart';
import 'package:bayanihan_application/layout/travel_card.dart';
import 'package:bayanihan_application/main/counter.dart';
import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShowPangasinanData extends StatefulWidget {
  @override
  _ShowPangasinanDataState createState() => _ShowPangasinanDataState();
}

List<List<dynamic>> _data = [];

class _ShowPangasinanDataState extends State<ShowPangasinanData> {
  //Async method to convert data from csv file to a list
  void _loadCSV() async {
    final _rawData =
        await rootBundle.loadString("assets/res/pangasinan_data.csv");
    List<List<dynamic>> _listData = CsvToListConverter().convert(_rawData);
    _data = _listData;
    setState(
      () {
        _data = _listData;
      },
    );
  }

  //Initial state load firsts before returning the scaffold
  void initState() {
    super.initState();
    _loadCSV();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Cities/Municipalities"),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  itemCount: (_data == null ? 0 : _data.length) - 1,
                  itemBuilder: (BuildContext context, int index) {
                    return new InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) {
                              return new SingleChildScrollView(
                                child: new Card(
                                  elevation: 8,
                                  child: SafeArea(
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Row(
                                            children: <Widget>[
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "Case Update\n",
                                                      style: kTitleTextstyle4,
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          "as of May 8, 2021",
                                                      style: TextStyle(
                                                        color: kTextLightColor,
                                                        fontSize: 15.0,
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
                                        ),
                                        SizedBox(height: 20),
                                        Container(
                                          //alignment: Alignment.center,
                                          child: Table(
                                            defaultColumnWidth:
                                                FlexColumnWidth(10),
                                            children: [
                                              TableRow(children: [
                                                //Case updates card
                                                Counter(
                                                  color: kInfectedColor,
                                                  number: _data[index + 1][9],
                                                  title: "Active",
                                                ),
                                                Counter(
                                                  color: kDeathColor,
                                                  number: _data[index + 1][10],
                                                  title: "Deaths",
                                                ),
                                              ]),
                                              TableRow(children: [
                                                Counter(
                                                  color: kRecovercolor,
                                                  number: _data[index + 1][11],
                                                  title: "Recovered",
                                                ),
                                                Counter(
                                                  color: kPrimaryColor,
                                                  number: _data[index + 1][12],
                                                  title: "Total Cases",
                                                ),
                                              ])
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              _data[index + 1][2]
                                                  .toString()
                                                  .toUpperCase(), //MUNICIPALITY
                                              style: kTitleTextstyle,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "TRAVEL REQUIREMENTS:",
                                              style: kTitleTextstyle3,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Text(_data[index + 1][3],
                                            style:
                                                kTitleTextstyle2), //CQ STATUS
                                        SizedBox(height: 10),
                                        //Travel Requirements card
                                        TravelCard(
                                          text: _data[index + 1][4].toString(),
                                          image: "assets/images/2.png",
                                          title: "Requirement # 1",
                                        ),
                                        TravelCard(
                                          text: _data[index + 1][5].toString(),
                                          image: "assets/images/1.png",
                                          title: "Requirement # 2",
                                        ),
                                        TravelCard(
                                          text: _data[index + 1][6].toString(),
                                          image: "assets/images/5.png",
                                          title: "Requirement # 3",
                                        ),
                                        TravelCard(
                                          text: _data[index + 1][7].toString(),
                                          image: "assets/images/3.png",
                                          title: "Requirement # 4",
                                        ),
                                        if (_data[index + 1][8].toString() !=
                                            "")
                                          TravelCard(
                                            text:
                                                _data[index + 1][8].toString(),
                                            image: "assets/images/4.png",
                                            title: "Requirement # 5",
                                          ),
                                        SizedBox(height: 30),
                                      ],
                                    ),
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
                              _data[index + 1][2].toString(), // name of cities
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Poppins',
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
