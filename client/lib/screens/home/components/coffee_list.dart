import 'package:client/screens/body/coffeeListBody.dart';
import 'package:flutter/material.dart';

class coffeeList extends MaterialPageRoute<Null> {
  coffeeList()
      : super(builder: (BuildContext ctx) {
          return Scaffold(body: listBody());
        });
}