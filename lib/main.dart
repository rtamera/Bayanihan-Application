import 'package:bayanihan_application/regions/car.dart';
import 'package:bayanihan_application/province/ncr.dart';
import 'package:bayanihan_application/regions/region1.dart';
import 'package:bayanihan_application/regions/region2.dart';
import 'package:bayanihan_application/regions/region3.dart';
import 'package:bayanihan_application/regions/region4a.dart';
import 'package:flutter/material.dart';
import 'main/appInfo.dart';
import 'main/regionMenu.dart';

void main() {
  runApp(
    MaterialApp(
      //Removes debug banner at the top right corner
      debugShowCheckedModeBanner: false,
      //Routes pages
      initialRoute: '/home',
      routes: {
        '/home': (context) => RegionMenu(),
        '/region1': (context) => ShowRegion1Data(),
        '/region2': (context) => ShowRegion2Data(),
        '/region3': (context) => ShowRegion3Data(),
        '/region4a': (context) => ShowRegion4AData(),
        '/ncr': (context) => ShowNCRData(),
        '/car': (context) => ShowCarData(),
        '/about': (context) => ShowAppInfo(),
      },
    ),
  );
}
