import 'package:flutter/material.dart';

class ZuMap extends StatelessWidget {
  const ZuMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var zuMap = Image.asset("assets/zu_map.png",fit: BoxFit.cover,);
    return Scaffold(
      body: Center(
        child: zuMap,
      ),
    );
  }
}
