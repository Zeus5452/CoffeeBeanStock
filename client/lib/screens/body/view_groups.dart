import 'package:client/components/bottom_nav_bar.dart';
import 'package:client/screens/home/components/app_bar.dart';
import 'package:flutter/material.dart';

class groupList extends MaterialPageRoute<Null> {
  groupList()
      : super(builder: (BuildContext ctx) {
          return Scaffold(
            appBar: homeAppBar(ctx),
            bottomNavigationBar: BottomNavBar(),
            body: Center(
              child: Text("Groups"),
            ),
          );
        });
}
