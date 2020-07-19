import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  final String title;
  final String subtitle;
  final String tab1;
  final String tab2;
  final String tab3;

  CustomeAppBar({this.title, this.subtitle, this.tab1, this.tab2, this.tab3});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.only(top:30),
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 3,
            offset: Offset(1, 1),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'VarelaRound',
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.black54,
              fontFamily: 'VarelaRound',
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.black54,
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.normal,
            ),
            labelColor: Colors.black,
            labelStyle: TextStyle(
              fontFamily: 'VarelaRound',
              fontWeight: FontWeight.bold,
            ),
            tabs: <Widget>[
              Tab(
                child: Text(
                  tab1,
                  style: TextStyle(
                    fontFamily: 'VarelaRound',
                    fontSize: 13,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  tab2,
                  style: TextStyle(
                    fontFamily: 'VarelaRound',
                    fontSize: 13,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  tab3,
                  style: TextStyle(
                    fontFamily: 'VarelaRound',
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
