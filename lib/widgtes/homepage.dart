import 'package:Education/widgtes/bookBox.dart';
import 'package:Education/widgtes/customeAppBar.dart';
import 'package:Education/widgtes/myCard.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.blue.shade50,
          index: 2,
          items: <Widget>[
            Icon(
              Icons.content_copy,
              color: Colors.blueAccent,
              size: 24,
            ),
            Icon(
              Icons.mail_outline,
              color: Colors.blueAccent,
              size: 28,
            ),
            CircleAvatar(
              foregroundColor: Colors.blueAccent,
              radius: 25,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue.shade600,
            ),
            Icon(
              Icons.chat_bubble_outline,
              color: Colors.blueAccent,
              size: 26,
            ),
            Icon(
              Icons.person_outline,
              color: Colors.blueAccent,
              size: 27,
            ),
          ],
        ),
        backgroundColor: Color(0xffebf7f6),
        body: Column(
          children: <Widget>[
            CustomeAppBar(
              title: 'Crissten Coller',
              subtitle: 'Business English',
              tab1: 'Activity',
              tab2: 'Learning Plan',
              tab3: 'Progress',
            ),
            BookBox(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Latest Results',
                    style: TextStyle(
                      fontFamily: 'VarelaRound',
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Lowest',
                    style: TextStyle(
                      fontFamily: 'VarelaRound',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  MyCard(
                    unitNumber: 'Unit5',
                    title: ' Running business in Sweden',
                    cardsNumber: 34,
                    subtitle: 'Business',
                    percent: 15,
                  ),
                  MyCard(
                    unitNumber: 'Unit3',
                    title: ' Job interview',
                    cardsNumber: 48,
                    subtitle: 'Career',
                    percent: 25,
                  ),
                  MyCard(
                    unitNumber: 'Unit8',
                    title: ' Financial Market',
                    cardsNumber: 26,
                    subtitle: 'Finance',
                    percent: 75,
                  ),
                  MyCard(
                    unitNumber: 'Unit7',
                    title: ' Sales improvement',
                    cardsNumber: 29,
                    subtitle: 'Sales',
                    percent: 90,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
