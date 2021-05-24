import 'package:client/screens/body/add_coffee.dart';
import 'package:client/screens/body/add_group.dart';
import 'package:client/screens/body/view_groups.dart';
import 'package:client/screens/home/home-screen.dart';
import 'package:flutter/material.dart';
import 'package:client/screens/body/coffee_list.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.view_list_sharp),
              onPressed: () {
                Navigator.push(context, coffeeList());
              }),
          IconButton(
              icon: Icon(Icons.group),
              onPressed: () {
                Navigator.push(context, groupList());
              }),
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(context, HomeScreenb());
              }),
          IconButton(
              icon: Icon(Icons.addchart_rounded),
              onPressed: () {
                Navigator.push(context, add_coffeeList());
              }),
          IconButton(
            icon: Icon(Icons.group_add_sharp),
            onPressed: () {
              Navigator.push(context, add_groupList());
            },
          ),
        ],
      ),
    );
  }
}
