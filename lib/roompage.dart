import 'package:flutter/material.dart';
import 'package:ui_clone/widgets/liveroom.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 10,
            ),
            height: 220,
            width: 450,
            decoration: BoxDecoration(
              color: Colors.indigo[500],
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Container(
                  height: 3,
                  width: 70,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 250,
                      height: 50,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Type a thought here..",
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                          focusColor: Colors.grey,

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          // labelText: "Type a thought here..."
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Image(
                        image: AssetImage("images/send.png"),
                        width: 100,
                        height: 90,
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Positioned(
            top: 117,
            left: 0,
            child: Container(
              height: 112,
              width: 410,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(
                              "images/emoji1.png",
                            ),
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Leave quietly")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 95,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey[100],
                    child: Image(
                      image: AssetImage("images/emoji2.png"),
                      width: 39,
                      height: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black38,
                    child: Image(
                      image: AssetImage("images/9.png"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 40,
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Design talk and chill",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    LiveRoommm(
                      name: "Sarah",
                      color: Colors.black,
                      imagePath: "images/2.png",
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    LiveRoomm(
                      name: "Daniel",
                      color: Colors.pink[100],
                      imagePath: "images/1.png",
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    LiveRoomm(
                      name: "Samantha",
                      color: Colors.blueGrey[100],
                      imagePath: "images/8.png",
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    LiveRoomm(
                      color: Colors.orangeAccent[100],
                      name: "Aishat",
                      imagePath: ("images/3.png"),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    LiveRoomm(
                      color: Colors.purple[100],
                      name: "Ruth",
                      imagePath: ("images/4.png"),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    LiveRoomm(
                      color: Colors.pink[100],
                      name: "Racheal",
                      imagePath: ("images/6.png"),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    LiveRoom(
                      name: "Grace",
                      color: Colors.orangeAccent[100],
                      imagePath: "images/9.png",
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    LiveRoom(
                      name: "Mercy",
                      color: Colors.greenAccent[100],
                      imagePath: "images/10.png",
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    LiveRoom(
                      name: "Sarah",
                      color: Colors.blueGrey[200],
                      imagePath: "images/11.png",
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    LiveRoom(
                      name: "Adeleke",
                      color: Colors.lightBlue[100],
                      imagePath: "images/12.png",
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    LiveRoom(
                      name: "Anna",
                      color: Colors.lightGreen[100],
                      imagePath: "images/3.png",
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    LiveRoom(
                      name: "Lauret",
                      color: Colors.purple[100],
                      imagePath: "images/7.png",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
