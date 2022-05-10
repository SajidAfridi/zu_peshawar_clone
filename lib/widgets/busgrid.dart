import 'package:brt_peshawar_clone/core/cardPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class busGrid extends StatefulWidget {
  const busGrid({Key? key}) : super(key: key);

  @override
  _busGridState createState() => _busGridState();
}

class _busGridState extends State<busGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 4.0,),
      crossAxisCount: 3,
      childAspectRatio: 1.35,
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 2.0,
      children: [
        buildCard(CupertinoIcons.bus, "Bus Schedule",const Color(0xff03a455)),
        buildCard(CupertinoIcons.bus, "Bus Arrival",const Color(0xff03a455)),
        buildCard(CupertinoIcons.map_fill, "Zu Map",const Color(0xff03a455)),
        buildCard(CupertinoIcons.clock, "Service Hours",const Color(0xff03a455)),
        buildCard(Icons.error, "Complaints",const Color(0xff03a455)),
        buildCard(CupertinoIcons.timer, "Travel History",const Color(0xff03a455)),

      ],
    );
  }
}