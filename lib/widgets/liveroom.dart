import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LiveRoomm extends StatelessWidget {
  const LiveRoomm({this.name, this.color, this.imagePath});
  final String name;
  final Color color;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 46,
              child: Image(
                image: AssetImage(imagePath),
              ),
            ),
            Positioned(
              right: 5,
              top: 65,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.mic_off,
                  color: Colors.black,
                  size: 15,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Icon(
              CupertinoIcons.asterisk_circle_fill,
              color: Colors.blue,
            ),
            SizedBox(
              width: 5,
            ),
            Text(name)
          ],
        )
      ],
    );
  }
}

class LiveRoom extends StatelessWidget {
  const LiveRoom({this.color, this.name, this.imagePath});
  final Color color;
  final String name;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 46,
              child: Image(
                image: AssetImage(imagePath),
              ),
            ),
            Positioned(
              right: 5,
              top: 65,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.mic_off,
                  color: Colors.black,
                  size: 15,
                ),
              ),
            ),
            Positioned(
              left: 5,
              top: 65,
              child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                  child: Image(
                    image: AssetImage("images/celebrate.png"),
                    width: 16,
                    height: 16,
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(name)
      ],
    );
  }
}

class LiveRoommm extends StatelessWidget {
  const LiveRoommm({this.color, this.name, this.imagePath});
  final String name;
  final Color color;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 46,
              child: Image(
                image: AssetImage(imagePath),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Icon(
              CupertinoIcons.asterisk_circle_fill,
              color: Colors.blue,
            ),
            SizedBox(
              width: 5,
            ),
            Text(name)
          ],
        )
      ],
    );
  }
}
