import 'dart:async';
import 'package:flutter/material.dart';

import 'login.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "splesh Sreen",
    home: spleshScreen(),
  ));
}

class spleshScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return spleshScreenState();
  }
}

// ignore: camel_case_types
class spleshScreenState extends State<spleshScreen> {
  @override
  initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Image.asset(
                                      'assets/laber.png',
                                      width: 150.0,
                                      // height: 100,
                                      scale: 0.1,
                                      // color: Colors.white,
                                    ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Mistri",
                  style: TextStyle(fontSize: 20,
                fontFamily: 'Poppins',

                   fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
      
    );
  }
}


// Image.asset("assets/slide$i.jpg"),