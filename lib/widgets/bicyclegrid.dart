import 'package:brt_peshawar_clone/core/cardPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bicycleGrid extends StatefulWidget {
  const bicycleGrid({Key? key}) : super(key: key);

  @override
  _bicycleGridState createState() => _bicycleGridState();
}

class _bicycleGridState extends State<bicycleGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      crossAxisCount: 3,
      childAspectRatio: 1.35,
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 2.0,
      children: [
        buildCard(CupertinoIcons.creditcard_fill, "Membership",Color(0xffee1f2a)),
        buildCard(CupertinoIcons.location_solid, "Nearby",Color(0xffee1f2a)),
        buildCard(Icons.pedal_bike, "Plan a Ride",Color(0xffee1f2a)),
        buildCard(Icons.electric_bike_rounded, "Ride History",Color(0xffee1f2a)),
        buildCard(Icons.money, "Security Deposit",Color(0xffee1f2a)),
        buildCard(CupertinoIcons.circle, "Tutorial",Color(0xffee1f2a)),
      ],
    );
  }
}
