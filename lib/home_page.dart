import 'package:flutter/material.dart';

import 'Screen/MainDrawer.dart';
import 'Screen/Search.dart';
import 'Screen/homeBottombar.dart';
import 'Screen/slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
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
                colors: <Color>[Color.fromARGB(255, 255, 18, 18), Color.fromARGB(195, 15, 15, 15)]),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Mistri",
            style: TextStyle(
              fontSize: 23,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 54, 244, 235),
      body: ListView(
        children: [
           Container(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                           Navigator.push(
                context, MaterialPageRoute(builder: (Context) => SearchPage()));
                        },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(66, 158, 158, 158)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          height: 50,
                          width: 200,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search Here.....",
                            ),
                          ),
                        ),
                        Spacer(),
                     
                          
                           Icon(
                            Icons.search,
                            size: 27,
                            color: Color.fromARGB(255, 71, 71, 71),
                          ),
                      
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
              
                  children: [
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          // alignment: Alignment.,
                          margin: EdgeInsets.only(top: 15, left: 10),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "Top Services",
                              style: TextStyle(
                                fontSize: 19,
              fontFamily: 'Poppins',

                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 14, 13, 13),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              
                MyCard(),
                
                Container(
                    child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Near by  Workers",
                            style: TextStyle(
                              fontSize: 19,
              fontFamily: 'Poppins',

                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 14, 13, 13),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
                NearBy(),
                // SliderWidegt(),
                

              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
