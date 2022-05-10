import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  _MydrawerState createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  bool changed = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Container(
        height: 100,
        child: Column(
          children: [
            Container(
              child: Image(image: AssetImage('assets/brt_logo.jpg')),
              ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text('My Profile',style: const TextStyle(color: Colors.black,fontSize: 16),),
                    leading: Icon(Icons.perm_identity_sharp,color: CupertinoColors.black,size: 25,),
                    onTap: (){},
                    focusColor: CupertinoColors.white,
                  ),
                  ListTile(
                    title: Text('FAQ',style: const TextStyle(color: Colors.black,fontSize: 16),),
                    leading: Icon(Icons.question_answer_outlined,color: CupertinoColors.black,size: 25,),
                    onTap: (){},
                    focusColor: CupertinoColors.white,
                  ),
                  ListTile(
                    title: Text('Helpline',style: const TextStyle(color: Colors.black,fontSize: 16),),
                    leading: Icon(Icons.phone,color: CupertinoColors.black,size: 25,),
                    onTap: (){},
                    focusColor: CupertinoColors.white,
                  ),
                  ListTile(
                    title: Text('Youtube Channel',style: const TextStyle(color: Colors.black,fontSize: 16),),
                    leading: Icon(Icons.ondemand_video,color: CupertinoColors.black,size: 25,),
                    onTap: (){},
                    focusColor: CupertinoColors.white,
                  ),
                  ListTile(
                    title: Text('Invite a Friend',style: const TextStyle(color: Colors.black,fontSize: 16),),
                    leading: Icon(Icons.person_add_outlined,color: CupertinoColors.black,size: 25,),
                    onTap: (){},
                    focusColor: CupertinoColors.white,
                  ),
                  ListTile(
                    title: Text('Setting',style: const TextStyle(color: Colors.black,fontSize: 16),),
                    leading: Icon(Icons.settings,color: CupertinoColors.black,size: 25,),
                    onTap: (){},
                    focusColor: CupertinoColors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
