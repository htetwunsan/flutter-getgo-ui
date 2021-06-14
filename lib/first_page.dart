import 'package:flutter/material.dart';
import 'package:flutter_getgo_ui/main.dart';
import 'package:flutter_getgo_ui/second_page.dart';
import 'package:flutter_svg/svg.dart';

Color pink = HexColor.fromHex("#F92A86");
Color blue = HexColor.fromHex("#021950");
// Color green = HexColor.fromHex("#31F8B9");
Color brightBlue = HexColor.fromHex("#0096FF");
Color grey400 = HexColor.fromHex("#BDBDBD");
Color blurWhite = HexColor.fromHex("#99FFFFFF");

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Widget _blueCard(
      double? left, double? top, double? right, double? bottom, int number) {
    return Positioned(
      top: top,
      right: right,
      left: left,
      bottom: bottom,
      child: Card(
        elevation: 8,
        child: Container(
          width: 90,
          height: 70,
          decoration: BoxDecoration(
            color: blue,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 4,
                left: 8,
                child: Text(
                  "$number",
                  style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 20,
                right: 8,
                child:
                    SvgPicture.asset("images/car.svg", width: 18, height: 18),
              ),
              Positioned(
                  bottom: 10,
                  child: Text("Available",
                      style: TextStyle(color: Colors.white, fontSize: 14)))
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/map_snap.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              // bell
              Positioned(
                  top: 40,
                  right: 24,
                  child: ClipOval(
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(
                          "images/alert_bell.svg",
                          width: 36,
                          height: 36,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )),

              // 3 cards
              _blueCard(null, 130, 40, null, 2),
              _blueCard(null, 270, 50, null, 3),
              _blueCard(
                  20, MediaQuery.of(context).size.height * 0.4, null, null, 6),

              // my location
              Positioned(
                top: MediaQuery.of(context).size.height * 0.27,
                left: MediaQuery.of(context).size.width * 0.35,
                child: ClipOval(
                  child: Container(
                    color: grey400.withOpacity(0.4),
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: ClipOval(
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipOval(
                              child: Container(
                                width: 20,
                                height: 20,
                                color: pink,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              /// Three group with go
              Positioned(
                  left: 12,
                  right: 12,
                  bottom: MediaQuery.of(context).size.height * 0.03,
                  child: Material(
                    borderRadius: BorderRadius.circular(6),
                    shadowColor: grey400,
                    elevation: 8,
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  child: SvgPicture.asset(
                                    "images/address.svg",
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Location",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: grey400,
                                                fontWeight: FontWeight.bold))),
                                    Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        child: Text("Current location"))
                                  ],
                                ))
                              ],
                            ),
                          ),
                          Container(height: 0.5, color: grey400),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 16),
                                        child: SvgPicture.asset(
                                          "images/calendar.svg",
                                          width: 30,
                                          height: 30,
                                        ),
                                      ),
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Text("Date & Time",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: grey400,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                          Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 10),
                                              child: Text("Now"))
                                        ],
                                      ))
                                    ],
                                  ),
                                ),
                                Container(width: 0.5, color: grey400),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 16),
                                        child: SvgPicture.asset(
                                          "images/time.svg",
                                          width: 30,
                                          height: 30,
                                        ),
                                      ),
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Text("Duration",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: grey400,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                          Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 10),
                                              child: Text("1 hr"))
                                        ],
                                      ))
                                    ],
                                  ),
                                ),
                                InkWell(
                                  splashColor: pink,
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SecondPage(),
                                        ));
                                  },
                                  child: Container(
                                      height: double.infinity,
                                      color: Colors.greenAccent,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 24),
                                        child: Center(
                                            child: Text(
                                          "Go",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )),

              //Rent a Car
              Positioned(
                left: 14,
                bottom: MediaQuery.of(context).size.height * 0.25,
                child: Text(
                  "Rent a car",
                  style: TextStyle(
                      color: pink, fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),

              // Locate
              Positioned(
                right: 24,
                bottom: MediaQuery.of(context).size.height * 0.25,
                child: ClipOval(
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        "images/locate.svg",
                        width: 36,
                        height: 36,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          backgroundColor: blue,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.4),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: SvgPicture.asset(
                    "images/car.svg",
                    color: Colors.white,
                    width: 18,
                    height: 18,
                  ),
                ),
                label: "Rent a car"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: SvgPicture.asset(
                    "images/car.svg",
                    color: Colors.white.withOpacity(0.4),
                    width: 18,
                    height: 18,
                  ),
                ),
                label: "Bookings"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: SvgPicture.asset(
                    "images/car.svg",
                    color: Colors.white.withOpacity(0.4),
                    width: 18,
                    height: 18,
                  ),
                ),
                label: "Refer a friend"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: SvgPicture.asset(
                    "images/car.svg",
                    color: Colors.white.withOpacity(0.4),
                    width: 18,
                    height: 18,
                  ),
                ),
                label: "Account"),
          ],
        ),
      ),
    );
  }
}
