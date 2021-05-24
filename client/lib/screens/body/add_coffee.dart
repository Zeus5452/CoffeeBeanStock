import 'package:client/components/bottom_nav_bar.dart';
import 'package:client/screens/home/components/app_bar.dart';
import 'package:flutter/material.dart';

class add_coffeeList extends MaterialPageRoute<Null> {
  add_coffeeList()
      : super(builder: (BuildContext ctx) {
          return Scaffold(
            appBar: homeAppBar(ctx),
            bottomNavigationBar: BottomNavBar(),
            body: Center(
              child: Text("add coffee"),
            ),
          );
        });
}
