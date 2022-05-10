import 'package:brt_peshawar_clone/core/cardPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ticketGrid extends StatefulWidget {
  const ticketGrid({Key? key}) : super(key: key);

  @override
  _ticketGridState createState() => _ticketGridState();
}

class _ticketGridState extends State<ticketGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 4.0,),
      crossAxisCount: 3,
      childAspectRatio: 1.3,
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 2.0,
      children: [
        buildCard(CupertinoIcons.location_circle, "Trip Planner",const Color(0xff03a455)),
        buildCard(Icons.wallet_membership_sharp, "Recharge",const Color(0xff03a455)),
        buildCard(Icons.wallet_membership, "Recharge History",const Color(0xff03a455)),
        buildCard(Icons.stars_rounded, "What's New",const Color(0xff03a455)),
        buildCard(Icons.money, "Fare",const Color(0xff03a455)),
        buildCard(Icons.document_scanner, "Travel Condition",const Color(0xff03a455)),
      ],
    );
  }
}
