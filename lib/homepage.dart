import 'package:flutter/material.dart';
import 'package:ui_clone/roompage.dart';
import 'widgets/notificationcard.dart';
import 'widgets/horizontalcard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomAppBar(
        // color: Colors.white,
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.calendar_today_outlined),
              ),
              SizedBox(width: 30),
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.indigo[500],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Start room",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.grey[100],
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          height: 1000,
          child: ListView(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning,",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          )),
                      Text("Grace",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    child: Image(
                      image: AssetImage("images/2.png"),
                    ),
                  ),
                ],
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        HorizontalCard(
                          color: Colors.lightBlue[100],
                          value: ("Design"),
                          imagePath: "images/rmcp.png",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        HorizontalCard(
                          color: Colors.pink[100],
                          value: ("Figma"),
                          imagePath: "images/dart.png",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        HorizontalCard(
                          color: Colors.orange[100],
                          value: ("Flutter"),
                          imagePath: "images/map.png",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        HorizontalCard(
                          color: Colors.purpleAccent[100],
                          value: ("Design"),
                          imagePath: "images/rmcp.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                "Upcoming",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo[500],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 4,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.vertical()),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (contaxt) => RoomPage()));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("10:00 - 20:00",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)),
                            Text("Design talks and chill",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Happening now",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              NotificationClass(
                value: "STARTUP CLUB",
                value2: "Pitch your start up idea to VCs & top\nEntreprenuers",
                imagePath1: "images/1.png",
                imagePath2: "images/2.png",
                imagePath: "images/3.png",
              ),
              SizedBox(
                height: 20,
              ),
              NotificationClass(
                value: "DATING GAME + SHOOT SHOT",
                value2: "Pitch your start up idea to VCs & top\nEntreprenuers",
                imagePath1: "images/4.png",
                imagePath2: "images/6.png",
                imagePath: "images/7.png",
              ),
              SizedBox(
                height: 20,
              ),
              NotificationClass(
                value: "DATING GAME + SHOOT SHOT",
                value2: "Pitch your start up idea to VCs & top\nEntreprenuers",
                imagePath1: "images/8.png",
                imagePath2: "images/9.png",
                imagePath: "images/10.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
