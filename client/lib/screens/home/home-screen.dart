import 'package:flutter/material.dart';
import 'package:client/components/bottom_nav_bar.dart';
import 'components/app_bar.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}

class HomeScreenb extends MaterialPageRoute<Null> {
  HomeScreenb()
      : super(builder: (BuildContext ctx) {
          return Scaffold(
            appBar: homeAppBar(ctx),
            bottomNavigationBar: BottomNavBar(),
            body: Body(),
          );
        });
}
