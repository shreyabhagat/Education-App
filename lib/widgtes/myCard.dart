import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyCard extends StatelessWidget {
  final String unitNumber;
  final String title;
  final int cardsNumber;
  final String subtitle;
  final double percent;

  MyCard({
    this.unitNumber,
    this.title,
    this.cardsNumber,
    this.subtitle,
    this.percent,
  });
  @override
  Widget build(BuildContext context) {
    Color c = percent > 50 ? Colors.blue : Colors.red;
    return Card(
      margin: EdgeInsets.symmetric(vertical: 7, horizontal: 18),
      child: Container(
        padding: EdgeInsets.only(top: 14, left: 16, right: 16, bottom: 4),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  '$unitNumber -',
                  style: TextStyle(
                    fontFamily: 'VarelaRound',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'VarelaRound',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Chip(
                  labelPadding: EdgeInsets.all(3),
                  backgroundColor: Colors.white,
                  avatar: Icon(
                    Icons.folder_open,
                    color: Colors.blue,
                    size: 20,
                  ),
                  label: Text(
                    '$cardsNumber Cards',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'VarelaRound',
                      color: Colors.black54,
                    ),
                  ),
                ),
                Chip(
                  labelPadding: EdgeInsets.all(3),
                  backgroundColor: Colors.white,
                  avatar: Icon(
                    Icons.bookmark_border,
                    color: Colors.blue,
                    size: 20,
                  ),
                  label: Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'VarelaRound',
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(
                  width: 9,
                ),
                Expanded(
                  child: LinearPercentIndicator(
                    leading: Text(
                      '${percent.toInt()}%',
                      style: TextStyle(
                        fontFamily: 'VarelaRound',
                        color: c,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    percent: percent * .01,
                    backgroundColor: Colors.grey.shade400,
                    progressColor: c,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
