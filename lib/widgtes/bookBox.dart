import 'package:flutter/material.dart';

class BookBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      margin: EdgeInsets.only(top:24,left: 16,right: 16,bottom: 14),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.indigo.shade500,
            //Colors.purple.shade400,
            Colors.blue.shade500,
            Colors.teal.shade400
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Keep it up!',
                style: TextStyle(
                  fontFamily: 'VarelaRound',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'You learned 80% of you goal this week!\n Good job from your',
                style: TextStyle(fontSize: 13, color: Colors.white54),
              ),
            ],
          ),
          Image.asset(
            'images/books.png',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
