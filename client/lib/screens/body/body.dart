import 'package:flutter/material.dart';
import 'package:client/components/image_banner.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("assets/images/home-coffee.jpg"),
          Text("dfg"),
          Container(
            child: Text("kjsudgfkusdkugh"),
          )
        ],
      ),
    );
  }
}
