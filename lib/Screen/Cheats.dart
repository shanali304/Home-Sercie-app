import 'package:flutter/material.dart';

import 'MainDrawer.dart';

import 'homeBottombar.dart';
import 'Post_Task.dart';

class CheatsPage extends StatefulWidget {
  const CheatsPage({super.key});

  @override
  State<CheatsPage> createState() => _CheatsPageState();
}

class _CheatsPageState extends State<CheatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,

      // backgroundColor: Colors.black,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color.fromARGB(255, 255, 18, 18), Color(0xff0F0F0F)]),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Cheats",
            style: TextStyle(
              fontSize: 23,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Cheating(),
      ),
    );
    ;
  }
}

class Cheating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Heading",
                      style:
                          TextStyle(fontSize: 25, 
              fontFamily: 'Poppins',
                          
                          fontWeight: FontWeight.bold,),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
