import 'package:brt_peshawar_clone/pages/homepage.dart';
import 'package:brt_peshawar_clone/pages/loadingPage.dart';
import 'package:brt_peshawar_clone/pages/sub_pages/bus_subpages/zu_map.dart';
import 'package:brt_peshawar_clone/widgets/bicyclegrid.dart';
import 'package:brt_peshawar_clone/widgets/busgrid.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xff03a455),
        secondaryHeaderColor: const Color(0xffee1f2a),
        //primarySwatch: Colors.blue,
      ),
        // initialRoute: MyRoute.loading,
        // routes: {
        //   MyRoute.homeRoute: (context)=> const Homepage(),
        //   MyRoute.loading: (context)=> const LoadingPage(),
        //   MyRoute.zuMap: (context)=> const ZuMap(),
        // },
      home: const LoadingPage());
  }
}
