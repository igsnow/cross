import 'package:flutter/material.dart';

class Recommend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: screenWidth,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                '好货推荐',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  height: 2.8,
                ),
              ),
            ),
          ),
          Text(
            'zzy',
            style: TextStyle(
              height: 3,
            ),
          )
        ],
      ),
    );
  }
}
