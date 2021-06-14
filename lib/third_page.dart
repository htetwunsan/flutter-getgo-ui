import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'first_page.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(12.0),
        child: ListView(children: [
          // App Bar
          Container(
            height: 50,
            width: double.infinity,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkResponse(
                    splashColor: pink,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 8),
                      child: Icon(Icons.west),
                    ),
                  ),
                  Row(
                    children: [
                      Text("Booking ID : 44123331",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      SizedBox(width: 4),
                      SvgPicture.asset(
                        "images/copy.svg",
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(width: 12),
                    ],
                  )
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          // Content Mazda 3
          Text("Mazda 3",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Row(
            children: [
              Text("SMS1000Z",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(width: 6),
              Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: brightBlue,
                    borderRadius: BorderRadius.circular(4.0)),
                child: Text("CONFIRMED",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              )
            ],
          ),

          SizedBox(height: 12),

          // Time and Duration
          Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Start date",
                            style: TextStyle(
                                fontSize: 12,
                                color: grey400,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 4),
                        Text("Mon, 1 Nov 20"),
                        SizedBox(height: 4),
                        Text("11:45am")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("End date",
                            style: TextStyle(
                                fontSize: 12,
                                color: grey400,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 4),
                        Text("Tue, 2 Nov 20"),
                        SizedBox(height: 4),
                        Text("11:45am")
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  decoration: BoxDecoration(
                      color: blue, borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    children: [
                      Text("Duration",
                          style: TextStyle(
                              fontSize: 12,
                              color: grey400,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(children: [
                            Text("02",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                            Text("days ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ]),
                          Column(
                            children: [
                              Text(
                                ":",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 2),
                              Text(" ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(children: [
                            Text("00",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                            Text("hours",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ]),
                        ],
                      )
                    ],
                  ))
            ],
          ),

          SizedBox(height: 12),

          // Two Buttons
          Row(
            children: [
              Expanded(
                  child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(color: Colors.black, width: 0.5)),
                child: Center(
                    child: SvgPicture.asset("images/add_to_calendar.svg")),
              )),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(color: Colors.black, width: 0.5)),
                child: Center(child: SvgPicture.asset("images/extend.svg")),
              )),
            ],
          ),

          SizedBox(height: 12),

          // Car Image
          Container(
            width: double.infinity,
            height: 120,
            child: PageView(children: [
              Image.asset("images/get_go_car.png",
                  fit: BoxFit.contain, width: double.infinity, height: 120),
              Image.asset("images/get_go_car.png",
                  fit: BoxFit.contain, width: double.infinity, height: 120),
              Image.asset("images/get_go_car.png",
                  fit: BoxFit.contain, width: double.infinity, height: 120),
              Image.asset("images/get_go_car.png",
                  fit: BoxFit.contain, width: double.infinity, height: 120),
              Image.asset("images/get_go_car.png",
                  fit: BoxFit.contain, width: double.infinity, height: 120),
              Image.asset("images/get_go_car.png",
                  fit: BoxFit.contain, width: double.infinity, height: 120),
            ]),
          ),

          SizedBox(height: 24),

          // Pick up
          Text(
            "Pick up car at",
            style: TextStyle(
                color: pink, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          // Map
          Container(
            height: 150,
            child: Row(
              children: [
                Image.asset("images/map_snap.png"),
                SizedBox(
                  width: 12,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("194 Punggol Road P100 \nMulti Storey Car Park",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text("Level 4 / Lot123 - 456"),
                  SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        border: Border.all(color: Colors.black, width: 0.5)),
                    child: Center(
                        child: SvgPicture.asset("images/get_directions.svg")),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4)),
                          child: Image.asset("images/map_snap.png",
                              fit: BoxFit.cover)),
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4)),
                          child: Image.asset("images/map_snap.png",
                              fit: BoxFit.cover)),
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4)),
                          child: Image.asset("images/map_snap.png",
                              fit: BoxFit.cover)),
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                            child: Text("+10",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          )),
                      SizedBox(
                        width: 4,
                      ),
                    ],
                  )
                ])
              ],
            ),
          ),

          SizedBox(height: 6),

          Divider(
            thickness: 4,
            color: grey400,
          ),

          SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Estimated total",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("*Amount is not final",
                      style: TextStyle(
                          fontSize: 12,
                          color: grey400,
                          fontWeight: FontWeight.bold))
                ],
              ),
              Row(
                children: [
                  Text("S\$52.00",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(width: 6),
                  SvgPicture.asset("images/arrow_forward.svg")
                ],
              )
            ],
          ),

          SizedBox(height: 6),
          Divider(
            color: grey400,
          ),

          SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Need help?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SvgPicture.asset("images/help.svg")
            ],
          ),

          SizedBox(height: 6),
          Divider(
            color: grey400,
          ),

          SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Cancel the booking",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SvgPicture.asset("images/help_cancel.svg")
            ],
          ),

          SizedBox(height: 6),
          Divider(
            color: grey400,
          ),
        ]),
      ),
    );
  }
}
