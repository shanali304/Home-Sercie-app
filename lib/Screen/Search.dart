import 'package:flutter/material.dart';
import 'package:side_sheet/side_sheet.dart';

import 'MainDrawer.dart';
import 'fliter.dart';
import 'homeBottombar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

String text = 'no data';

class _SearchPageState extends State<SearchPage> {
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
                colors: <Color>[
                  Color.fromARGB(255, 255, 18, 18),
                  
                  Color.fromARGB(195, 15, 15, 15)
                ]),
          ),
        ),
        // backgroundColor: Colors.red,
        title: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Search here ",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Searchpage(),
      ),
    );
    ;
  }
}

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // shrinkWrap: true,
        children: [
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Container(
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
                        height: 40,
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
                      Spacer(),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: () async {
                                final data = await SideSheet.right(
                                    body: Container(child: Filter()),
                                    context: context);
                              },
                              child: Image.asset(
                                'assets/filter.png',
                                width: 25.0,
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  height: 490,
                  width: 600,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 95,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            elevation: 8,
                            color: Colors.white,
                            child: ListTile(
                                leading: Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 10, top: 10),
                                      child: CircleAvatar(
                                        radius: 20,
                                        child: Icon(
                                          Icons.person_2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 25, top: 25),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Title Heading',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.star,
                                              size: 15, color: Colors.yellow),
                                          Icon(Icons.star,
                                              size: 15, color: Colors.yellow),
                                          Icon(Icons.star,
                                              size: 15, color: Colors.yellow),
                                          Icon(Icons.star,
                                              size: 15, color: Colors.yellow),
                                          Icon(Icons.star_border,
                                              size: 15, color: Colors.yellow),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                trailing: SizedBox(
                                    height: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Text(
                                        'Town',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ))),
                          ),
                        );
                      })))
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
