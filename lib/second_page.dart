import 'package:flutter/material.dart';
import 'package:flutter_getgo_ui/first_page.dart';
import 'package:flutter_getgo_ui/third_page.dart';
import 'package:flutter_svg/svg.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //App Bar
          Container(
            height: 80,
            width: double.infinity,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  InkResponse(
                    splashColor: pink,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Icon(Icons.west),
                    ),
                  ),
                  Text("Search results",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                ],
              ),
            ),
          ),
          // Content
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text("Date & Time",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: grey400,
                                            fontWeight: FontWeight.bold))),
                                Container(
                                    margin: EdgeInsets.only(bottom: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text("Duration",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: grey400,
                                            fontWeight: FontWeight.bold))),
                                Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Text("1 hr"))
                              ],
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          //
          Expanded(
            child: Container(
              color: blue,
              child: Column(
                children: [
                  SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // 300+ cars found
                      Row(
                        children: [
                          SizedBox(width: 16),
                          Text("300+ ",
                              style: TextStyle(color: pink, fontSize: 18)),
                          Text("cars found",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                        ],
                      ),

                      // Filter and Map
                      Row(
                        children: [
                          Container(
                              width: 64,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 6),
                                child: Text("Filter",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              )),
                          SizedBox(width: 10),
                          Container(
                              width: 64,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 6),
                                child: Text("Map",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              )),
                          SizedBox(width: 16),
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        carTile(),
                        carTile(),
                        carTile(),
                        carTile(),
                        carTile(),
                        carTile(),
                        carTile(),
                        carTile(),
                        carTile(),
                        carTile(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget carTile() {
    return InkWell(
      splashColor: pink,
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ThirdPage()));
      },
      child: Column(
        children: [
          // Car Tile
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("images/get_go_car.png"))),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mazda 3",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("SMS1000Z",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14)),
                          Text("5 Seater",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14)),
                          Container(
                            margin: const EdgeInsets.only(right: 14),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 0.5),
                                borderRadius: BorderRadius.circular(4)),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("0.5KM AWAY",
                                  style: TextStyle(
                                      color: Colors.greenAccent, fontSize: 14)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Rental fee",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: grey400,
                                        fontWeight: FontWeight.bold)),
                                Text("Fr. \$3.00/hr",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14))
                              ]),
                          SizedBox(width: 26),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mileage fee",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: grey400,
                                        fontWeight: FontWeight.bold)),
                                Text("\$0.40/km",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14))
                              ]),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 12),

          Divider(
            height: 0.5,
            indent: 12,
            endIndent: 12,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
