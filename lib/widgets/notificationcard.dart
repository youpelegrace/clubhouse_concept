import 'package:flutter/material.dart';

class NotificationClass extends StatelessWidget {
  const NotificationClass(
      {this.value,
      this.value2,
      this.imagePath,
      this.imagePath1,
      this.imagePath2});
  final String value;
  final String value2;
  final String imagePath;
  final String imagePath1;
  final String imagePath2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 160,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white70,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Text(value2),
          SizedBox(height: 10),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.orange[100],
                child: Image(
                  image: AssetImage(imagePath),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.greenAccent[100],
                child: Image(
                  image: AssetImage(imagePath1),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.pinkAccent[100],
                child: Image(
                  image: AssetImage(imagePath2),
                ),
              ),
              SizedBox(width: 80),
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      Text("354"),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.mic_outlined),
                      Text("354")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
