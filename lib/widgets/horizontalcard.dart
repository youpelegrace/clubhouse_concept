import 'package:flutter/material.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({this.color, this.value, this.imagePath});
  final String value;
  final Color color;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9),
      height: 40,
      width: 100,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
      child: Row(
        children: [
          Image(
            image: AssetImage(imagePath),
            width: 30,
            height: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Text(value, style: TextStyle())
        ],
      ),
    );
  }
}
