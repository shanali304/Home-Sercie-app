import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

import 'MainDrawer.dart';
import 'homeBottombar.dart';

class Post_task extends StatefulWidget {
  const Post_task({super.key});

  @override
  State<Post_task> createState() => _Post_taskState();
}

class _Post_taskState extends State<Post_task> {
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
        // backgroundColor: Colors.red,
        title: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Post a task",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',

              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: PostPage(),
      ),
    );
    ;
  }
}

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GridView(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: GridTile(
                header: Padding(
                  padding: EdgeInsets.all(8.0),
                  // child: 
                  // Text(
                  //   '137',
                  //   style: TextStyle(color: Colors.red
                  //       , fontFamily: 'Poppins'),
                  // ),
                ),
                child: Image.network(
                  'https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'

                    ),
                footer: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Heading',
                        style: TextStyle(color: Colors.black,
              fontFamily: 'Poppins',
                        
                             fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: GridTile(
                //header: Text('asds',style: TextStyle(color: Colors.white),),
                child: Image.network(
                    'https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'

                    ),
                footer: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Heading',
                        style: TextStyle(color: Colors.black
                            ,
              fontFamily: 'Poppins',

                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: GridTile(
                //header: Text('asds',style: TextStyle(color: Colors.white),),
                child: Image.network(
                    'https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'

                    ),
                footer: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Heading',
                        style: TextStyle(color: Colors.black
                            , 
              fontFamily: 'Poppins',
                            
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: GridTile(
                //header: Text('asds',style: TextStyle(color: Colors.white),),
                child: Image.network(
                    'https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
                    ),
                footer: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Heading',
                        style: TextStyle(
              fontFamily: 'Poppins',
                          
                          color: Colors.black
                            , fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: GridTile(
                //header: Text('asds',style: TextStyle(color: Colors.white),),
                child: Image.network(
                    'https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'

                    ),
                footer: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Heading',
                        style: TextStyle(
              fontFamily: 'Poppins',
                          
                          color: Colors.black
                            , fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: GridTile(
                //header: Text('asds',style: TextStyle(color: Colors.white),),
                child: Image.network(
                  'https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'

                    ),
                footer: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Heading',
                        style: TextStyle(color: Colors.black
                            , fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: GridTile(
                //header: Text('asds',style: TextStyle(color: Colors.white),),
                child: Image.network(
                  'https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'

                    ),
                footer: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Heading',
                        style: TextStyle(color: Colors.black
                            , fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
          ],
        ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
