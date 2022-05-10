import 'package:brt_peshawar_clone/core/routing_system.dart';
import 'package:brt_peshawar_clone/pages/homepage.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  bool changedPosition = false;

  @override
  void initState() {
    _changeposition();
    _navigateToHome();
    super.initState();
  }
_changeposition()async{
    await Future.delayed(const Duration(milliseconds: 1000),(){
      setState(() {
        changedPosition = !changedPosition;
      });
    });
}

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Homepage()));
  }
  // @override
  // void dispose() {
  //   _navigateToHome();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 1.0,
              width: MediaQuery.of(context).size.width * 1.0,
              child: const Image(
                image: AssetImage('assets/Screenshot_20220108-133608.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          AnimatedPositioned(
            top: !changedPosition
                ? MediaQuery.of(context).size.height * 0.4
                : MediaQuery.of(context).size.height * 0.2,
            curve: Curves.fastOutSlowIn,
            duration: const Duration(seconds: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.transparent,
                  height: 200,
                  width: 200,
                  child: const Image(
                    image: AssetImage('assets/logo.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
