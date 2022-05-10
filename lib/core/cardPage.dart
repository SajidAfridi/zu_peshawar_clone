import 'package:brt_peshawar_clone/pages/sub_pages/bus_subpages/zu_map.dart';
import 'package:flutter/material.dart';

Widget buildCard(icon, name,iconColor) {
  return InkWell(
    onTap: () {
     /* if(name == "Zu Map"){
        print('here');
        //Navigator.p
      }*/
    },
    splashColor: Colors.white38,
    child: Card(
      elevation: 6.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                (icon),
                color: iconColor,
                size: 35,
              ),
            ],
          ),
          SizedBox(height: 3.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$name",
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    ),
  );
}