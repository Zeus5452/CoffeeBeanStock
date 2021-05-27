import 'package:client/screens/body/groupListBody.dart';
import 'package:flutter/material.dart';

class groupList extends MaterialPageRoute<Null> {
  groupList()
      : super(builder: (BuildContext ctx) {
          return Scaffold(body: groupListBody());
        });
}
