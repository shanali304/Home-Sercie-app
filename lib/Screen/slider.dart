import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
//  child: Image.asset("assets/slide$i.jpg",height: 200,

class NearBy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0,right: 2),
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 350,
          // width: 600,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    elevation: 5,
                    color: Colors.white,
                    child: ListTile(
                        leading: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10, top: 10),
                              child: CircleAvatar(
                                child: Icon(Icons.person_2),
                              ),
                            ),
                          ),
                        ),
                        title: Padding(
                       padding: const EdgeInsets.only(bottom: 25, top: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Title Heading',
                                style: TextStyle(
              fontFamily: 'Poppins',

                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.star, size: 15, color: Colors.yellow),
                                  Icon(Icons.star, size: 15, color: Colors.yellow),
                                  Icon(Icons.star, size: 15, color: Colors.yellow),
                                  Icon(Icons.star, size: 15, color: Colors.yellow),
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
              })),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 140,
          // width: 600,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Card(
                          // color: Color.fromARGB(34, 112, 78, 146),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: 130,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: CircleAvatar(
                                    radius: 30.0,
                                    child: Icon(
                                      Icons.light_sharp,
                                      size: 40,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Electration',
                                  style: TextStyle(
              fontFamily: 'Poppins',

                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              })),
    );
  }
}
// ya bhi ek slider han 

// class MySlider2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: CarouselSlider(
//         options: CarouselOptions(
//           height: 150.0,
//           autoPlay: true,
//           enlargeCenterPage:
//               true, //es sa humra center wali image bari ho jaye gi or baki aoni jaga pa rha gi
//         ),
//         items: _imgUrl.map((imagepath) {
//           return Builder(
//             builder: (BuildContext context) {
//               return Card(
                    
//                 child: Column(
//                   // mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     Container(
                      
//                       height: 50,
//                       width: double.infinity,
//                       child: Image.network(
//                         imagepath,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Container(
//                       // padding: EdgeInsets.all(10),
//                       child: Column(
//                         children: <Widget>[
//                           Text(
//                             'Sample Heading',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                             ),
//                           ),
//                           SizedBox(height: 10),
//                           Row(
//                             children: <Widget>[
//                               Icon(Icons.star, color: Colors.yellow),
//                               Icon(Icons.star, color: Colors.yellow),
//                               Icon(Icons.star, color: Colors.yellow),
//                               Icon(Icons.star, color: Colors.yellow),
//                               Icon(Icons.star_border, color: Colors.yellow),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           );
//         }).toList(),
//       ),
//     );
//   }

//   // final List _source = [Colors.red, Colors.black, Colors.yellow];
//   final List _imgUrl = [
//     'https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'
//         'https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'
//         'https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'
//         'https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'
//         'https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'
//         'https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'
//   ];
// }
