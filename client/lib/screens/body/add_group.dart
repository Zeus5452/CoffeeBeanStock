import 'package:client/components/bottom_nav_bar.dart';
import 'package:client/screens/home/components/app_bar.dart';
import 'package:flutter/material.dart';

class add_groupList extends MaterialPageRoute<Null> {
  add_groupList()
      : super(builder: (BuildContext ctx) {
          return Scaffold(
            appBar: homeAppBar(ctx),
            bottomNavigationBar: BottomNavBar(),
            body: Center(
              child: Text("add group"),
            ),
          );
        });
}
