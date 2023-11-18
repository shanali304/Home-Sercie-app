import 'package:services/SignUp_Screen.dart';
import 'package:services/login.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: SizedBox(
          width: 240,
          child: Drawer(
              backgroundColor: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ), //Offset
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 1.0,
                      spreadRadius: .0,
                    ), //BoxShadow
                  ],
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
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      // color: Colors.white,
                      width: double.infinity,
                      child: Column(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(top: 30.0),
                              width: 180,
                              height: 120,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Image.asset(
                                  'assets/laber.png',
                                  // width: 150,
                                  // height: 100,
                                  scale: 0.1,
                                  color: Colors.white,
                                ),
                              )),
                          Text(
                            "Mistri ",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                // color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 300,
                            height: 2,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "HOME",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                      leading: Icon(
                        Icons.home,
                        size: 25,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                    ),
                    Container(
                      width: 300,
                      height: 0.5,
                      color: Colors.white,
                    ),
                    ListTile(
                      title: Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                      leading:
                          Icon(Icons.person, size: 25, color: Colors.white),
                      onTap: () {
                        // Navigator.push(context,
                        // MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                    ),
                    Container(
                      width: 300,
                      height: 0.5,
                      color: Colors.white,
                    ),
                    ListTile(
                      title: Text(
                        "My Task",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                      leading: Icon(
                        Icons.task,
                        size: 25,
                        color: Colors.white,
                      ),
                      onTap: () {
                        // Navigator.push(context,
                        // MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                    ),
                    Container(
                      width: 300,
                      height: 0.5,
                      color: Colors.white,
                    ),
                    ListTile(
                      title: Text(
                        "Setting",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                      leading:
                          Icon(Icons.settings, size: 25, color: Colors.white),
                      onTap: () {
                        Null;
                        // Navigator.of(context).pop();
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => MyForm()));
                      },
                    ),
                    Container(
                      width: 300,
                      height: 0.5,
                      color: Colors.white,
                    ),
                    ListTile(
                      title: Text(
                        "Logout",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      leading:
                          Icon(Icons.logout, size: 25, color: Colors.white),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                    ),
                    Container(
                      width: 300,
                      height: 0.5,
                      color: Colors.white,
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
