import 'package:flutter/material.dart';

class RegionMenu extends StatefulWidget {
  @override
  _RegionMenuState createState() => _RegionMenuState();
}

class _RegionMenuState extends State<RegionMenu> {
  //Using hexidecimal colors: You can't use hexidecimal colors immediately
  //Must put it in a color variable with the level of opacity + the color value
  Color myHexColor = Color(0xffe9c46a);
  Color hexBlue = Color(0xff264653);

  /// Function to create a card and redirect it to a chosen page.
  GestureDetector createCard(String path, String text) {
    return GestureDetector( //Detects when you click the card
      onTap: () {
        Navigator.pushNamed(context, '/$path'); //Directs to chosen path
      },
      child: Card(
        elevation: 20,
        color: hexBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox( //Contains our text in card
          width: 300,
          height: 70,
          child: Center(
            child: Text(
              '$text',
              style: TextStyle(
                  fontSize: 30, fontFamily: 'Poppins', color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myHexColor,
      appBar: AppBar(
        title: Text('Bayanihan, Heal as One'),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton( //Added Information Button left of app bar
            icon: Icon(
              Icons.info,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/about'); //Navigates to about us page
            },
          ),
        ],
      ),
      body: SafeArea( //Ensures our app contents does not render outside safe space
        child: Center(
          child: SingleChildScrollView(
                      child: Column( //Used a column for menu contents
              children: <Widget>[
                SizedBox(width: 0, height: 5.0), //Used to leave a gap
                Text(
                  'Pick a Region:',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 50.0,
                    color: hexBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //Create Card functions called
                createCard('region1', 'Region 1'),
                createCard('region2','Region 2'),
                createCard('region3','Region 3'),
                createCard('region4a','Region 4A'),
                createCard('car', 'CAR'),
                createCard('ncr','NCR'),
                Image.asset('assets/icon.png', alignment: Alignment.bottomCenter, width: 150.0, height: 150.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
