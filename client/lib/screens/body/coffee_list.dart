import 'package:client/components/bottom_nav_bar.dart';
import 'package:client/screens/body/add_coffee.dart';
import 'package:client/screens/body/add_group.dart';
import 'package:client/screens/home/components/app_bar.dart';
import 'package:flutter/material.dart';

class coffeeList extends MaterialPageRoute<Null> {
  coffeeList()
      : super(builder: (BuildContext ctx) {
          return Scaffold(
            appBar: homeAppBar(ctx),
            bottomNavigationBar: BottomNavBar(),
            body: Center(child: Text("fgh")),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.push(ctx, add_groupList());
                },
                child: Text('...'),
                backgroundColor: Colors.orange[600]),
          );
        });
}

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

          // This menu button widget updates a _selection field (of type WhyFarther,
          // not shown here).
         