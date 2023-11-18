import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../home_page.dart';
import 'Search.dart';
import 'Cheats.dart';

import 'Post_Task.dart';


class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2,right: 3),
      child: Container(
      
        height: 65,
        padding: EdgeInsets.symmetric(horizontal: 25),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 18, 18),
                  Color.fromARGB(195, 15, 15, 15),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                // begin: const FractionalOffset(0.0, 0.0),
                // end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          // color: Color.fromARGB(255, 109, 10, 3),
          borderRadius: BorderRadius.only(
            bottomRight:Radius.circular(45), 
            bottomLeft:Radius.circular(45), 
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45), 
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            InkWell(
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (Context) => HomeScreen())
                  );
              },
              child: const Icon(
              FontAwesomeIcons.home,
            size: 25,
            color: Colors.white,
                      ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (Context) => SearchPage()));
              },
            child: const Icon(
              Icons.search,
            size: 25,
            color: Colors.white,
            
            ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (Context) => CheatsPage()));
              },
            child: const Icon(
                 Icons.sms  ,
            size: 25,
            color: Colors.white),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Post_task()));
              },
              child: const Icon(
              Icons.post_add,
            size: 25,
            color: Colors.white,
                      ),
            ),
          ],
        ),
      ),
    );
  }

}
        