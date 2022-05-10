import 'package:flutter/cupertino.dart';

Widget imageprovider(value) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('$value'),
        fit: BoxFit.cover,
      ),
    ),
  );
}